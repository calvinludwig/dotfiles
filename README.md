# Dotfiles

This is my personal dotfiles repository.

## Installation

### Requirements

- [stow](https://github.com/aspiers/stow)

### Clone this repository

```bash
git clone https://github.com/calvinludwig/dotfiles ~/dotfiles
```

### Symlink the dotfiles

```bash
cd ~/dotfiles
stow .
```

## Usage

Stow symlinks everything in this repository into `$HOME` (see `.stowrc`),
so `.config/fish` becomes `~/.config/fish`, `.local/scripts` becomes
`~/.local/scripts`, and so on. Fish adds `~/.local/scripts` to `PATH`
via `.config/fish/conf.d/paths.fish`.
