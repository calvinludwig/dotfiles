# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Architecture

This is a personal dotfiles repository that uses **GNU Stow** for symlink management. All configuration directories in the root are designed to be symlinked to `$HOME/.config/` using stow.

### Key Directories Structure
- **fish/** - Fish shell configuration with custom aliases, functions, and theme integration
- **nvim/** - Neovim configuration with basic Catppuccin theme and Treesitter
- **hypr/** - Hyprland window manager configuration split into modular conf files
- **kitty/** - Kitty terminal emulator configuration
- **waybar/** - Wayland status bar configuration with modular CSS themes
- **git/** - Git configuration including custom scripts and themes
- **starship.toml** - Cross-shell prompt configuration
- **Scripts in hypr/scripts/** - System utility scripts for brightness, keybindings, etc.

### Theme System
The repository follows a **Catppuccin color scheme** system with multiple variants:
- **Latte** (light theme) - Primary theme configured across applications
- **Macchiato** (dark theme) - Alternative theme files present
- Theme configuration files: `latte.json`, various `latte.conf` and `macchiato.conf` files

## Essential Commands

### Installation and Setup
```bash
# Clone repository
git clone https://github.com/calvinludwig/dotfiles

# Install configurations using stow
cd dotfiles
stow .
```

### Shell Environment 
The Fish shell configuration provides these key aliases:
- `nv` - Launch Neovim
- `lv` - Launch LazyVim (NVIM_APPNAME=lazyvim)
- `inv` - Interactive file selection with fzf preview using bat
- `cat` - Aliased to `bat -p` for syntax highlighting
- `yayf` - Interactive package search and install with fzf

### Development Tools Integration
- **mise** - Runtime version manager (activated in fish config)
- **zoxide** - Smart directory navigation (`z` command)
- **fzf** - Fuzzy finder integration throughout the system
- **starship** - Cross-shell prompt with Git integration

### Utility Scripts
- `bing_wallpaper.sh` - Downloads and sets Bing daily image as wallpaper
- `hypr/scripts/backlight` - System brightness control with notifications
- `git/better-git-branch.sh` - Enhanced git branch display with ahead/behind counts

### Configuration Management
- **Stow-based** - Use `stow .` to apply all configurations
- **Modular themes** - Theme variants stored as separate config files
- **No build process** - Direct configuration file usage, no compilation needed

### Visual Studio Code
Contains VS Code settings and extensions cache in `Code/` directory - includes cached extensions for various development tools.

## Architecture Notes

- Configuration is **modular** - many apps split configs into multiple files (hypr/conf/, waybar modules)
- **Catppuccin ecosystem** - Consistent theming across terminal, editor, window manager
- **Fish shell centric** - Primary shell with extensive customization and tool integration
- **Wayland focused** - Hyprland, Waybar, Mako notification system
- **Developer optimized** - Includes LazyVim, Docker context detection, Git workflow enhancements