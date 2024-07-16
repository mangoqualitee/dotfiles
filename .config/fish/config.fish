# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install fish fzf neovim
# install: llvm, miniforge3, rust, julia, haskell

set fish_greeting
fish_vi_key_bindings

if status is-interactive
    # Homebrew initialization
    test -d /opt/homebrew && set -gx HOMEBREW_PREFIX /opt/homebrew
    test -d "/home/linuxbrew/.linuxbrew" && set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
    eval ($HOMEBREW_PREFIX/bin/brew shellenv)
    test -x (command -v brew) || echo "brew not on path"

    # Load lang-toolchains
    test -f "$HOME/.cargo/env.fish" && source "$HOME/.cargo/env.fish"; or echo ".cargo not on path"
    test -d "$HOME/.juliaup/bin" && set -gx PATH "$HOME/.juliaup/bin" $PATH; or echo ".juliaup not on path"
    test -d "$HOME/.miniforge3/bin" && $HOME/.miniforge3/bin/conda "shell.fish" hook | source; or echo ".miniforge not on path"

    # Load utilities
    test -x (command -v fzf) && fzf --fish | source
    test -x (command -v trash) && abbr rm trash; or echo "trash not on path"

    # Exports and Aliases
    set -gx PATH "$HOME/.local/bin" $PATH
    set -gx EDITOR hx
    set -gx LANG en_IN.UTF8

    #alias jupyterlisten 'ssh -NL localhost:1234:localhost:8888 fbd'
end
