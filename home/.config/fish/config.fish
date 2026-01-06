fish_add_path "$HOME/.local/bin"

if test "$(uname)" = Darwin
    # homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"
    set -x CPATH "$HOMEBREW_PREFIX/include:$CPATH"
    set -x LIBRARY_PATH "$HOMEBREW_PREFIX/lib:$LIBRARY_PATH"

    # llvm
    fish_add_path "$(brew --prefix llvm)/bin"
    set -x CPATH "$(brew --prefix llvm)/include:$CPATH"
    set -x LIBRARY_PATH "$(brew --prefix llvm)/lib:$LIBRARY_PATH"

    # gnu coreutils
    fish_add_path "$(brew --prefix coreutils)/libexec/gnubin"

    # orbstack
    fish_add_path "$HOME/.orbstack/bin"
end

# neovim
set -x EDITOR "nvim"
alias vim "nvim"
alias vi "nvim"
alias v "nvim"

# rustup
source "$HOME/.cargo/env.fish"

# ghcup
set GHCUP_INSTALL_BASE_PREFIX $HOME
fish_add_path "$HOME/.cabal/bin"
fish_add_path "$HOME/.ghcup/bin"

# starship
starship init fish | source

# atuin
atuin init fish --disable-up-arrow | source

# osh
alias sh "osh"
alias bash "osh"

# zoxide
zoxide init fish | source
alias c "z"

# eza
alias l "eza -l -a -h --git --hyperlink"

# bat
set -x BAT_THEME "ansi"
alias cat "bat --paging=never"
alias b "bat"

# yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# utils
alias copy "fish_clipboard_copy"
alias paste "fish_clipboard_paste"
alias temp "cd (mktemp -d)"
function mkcd
    mkdir -p $argv[1]
    cd $argv[1]
end
