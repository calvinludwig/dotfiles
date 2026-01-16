function tm
    set session_name "home"

    if set -q TMUX
        
        if not tmux has-session -t $session_name 2>/dev/null
            tmux new-session -d -s $session_name -c $HOME
        end
        
        tmux switch-client -t $session_name
    else
        tmux new-session -A -s $session_name -c $HOME
    end
end
