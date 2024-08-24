set fish_greeting
if status is-interactive
    # Load lang-toolchains
    test -d "$HOME/.cargo/bin" && set -x PATH "$HOME/.cargo/bin" $PATH; or echo ".cargo not on path"
    test -d "$HOME/.juliaup/bin" && set -gx PATH "$HOME/.juliaup/bin" $PATH; or echo ".juliaup not on path"
    test -d "$HOME/.miniforge3/bin" && $HOME/.miniforge3/bin/conda "shell.fish" hook | source; or echo ".miniforge not on path"

    # Load utilities
    test -x (command -v fzf) && fzf --fish | source; or echo "fzf not on path"
    test -x (command -v trash) && abbr rm trash; or echo "trash not on path"

    # Exports and Aliases
    set -gx PATH "$HOME/.local/bin" $PATH
    set -gx EDITOR /usr/bin/helix && abbr hx \$EDITOR
    set -gx LESSHISTFILE -
    # set -gx LANG en_US.UTF8
    #alias jupyterlisten 'ssh -NL localhost:1234:localhost:8888 fbd'
end
