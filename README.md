# dotfiles

These are my dotfiles with a symlinking system using `make`.

This requires both GNU `make` and GNU `ln`.

The [`Makefile`](Makefile) should explain itself and is easy to adjust.

Contains configuration for:
- `fish`
- `ghostty`
- `helix`
- `jj`
- `nvim`
- `yazi`
- `zed`
- `zellij`
- `emacs`
- `git`

The `fish` config also contains configuration for:
- macos only:
  - `homebrew`
  - `llvm`
  - `gnu coreutils`
  - `orbstack`
- `neovim`
- `rustup`
- `ghcup`
- `starship`
- `atuin`
- `osh`
- `zoxide`
- `eza`
- `bat`
- `yazi`

## Getting Started

Just run:
```bash
make
```

This will symlink everything correctly.

Alternatively, specify what to symlink like `make nvim`.
