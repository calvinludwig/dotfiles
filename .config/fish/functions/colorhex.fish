function colorhex
    python3 -c '
import sys, re, termios, tty

def query_color(i):
    # Send request to terminal: What is color i?
    sys.stdout.write(f"\033]4;{i};?\007")
    sys.stdout.flush()

    # Read response char by char until \a (bell)
    resp = ""
    while True:
        ch = sys.stdin.read(1)
        resp += ch
        if ch == "\a": break
    
    # Extract RGB values from format: ...rgb:RRRR/GGGG/BBBB
    m = re.search(r"rgb:([0-9a-fA-F]+)/([0-9a-fA-F]+)/([0-9a-fA-F]+)", resp)
    if m:
        # Take just the first 2 hex digits for standard 8-bit color
        return f"#{m.group(1)[:2]}{m.group(2)[:2]}{m.group(3)[:2]}"
    return "Unknown"

# Set terminal to raw mode to read response without user hitting Enter
fd = sys.stdin.fileno()
old_settings = termios.tcgetattr(fd)
try:
    tty.setraw(sys.stdin.fileno())
    print("\r   ID  |  HEX      |  COLOR")
    print("\r  ---------------------------")
    for i in range(16):
        hex_val = query_color(i)
        # Print format: ID, Hex, and the actual color block
        # \033[48;5;{i}m sets the background color
        sys.stdout.write(f"\r  {i:<4} | {hex_val}   | \033[48;5;{i}m          \033[0m\r\n")
finally:
    # Restore terminal settings so it behaves normally afterwards
    termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
'
end
