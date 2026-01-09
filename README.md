# Dotfiles

This is my personal dotfiles repository.

## Installation

### Requirements

- [stow](https://github.com/aspiers/stow)

### Clone this repository

```bash
git clone https://github.com/calvinludwig/dotfiles
```

### Symlink the dotfiles

```bash
cd dotfiles
stow .
fish_add_path $HOME/.config/bin
dev-install
```

## Usage

Stow will symlink all directories and files in this directory to
the `$HOME/.config` directory.
