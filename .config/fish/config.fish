if status is-interactive
    # Drop habits
    set -gx beep 'bash -c "paplay /home/vishal/Music/beep.mp3 &"'
    bind \cl $beep
    alias clear $beep
    # Load lang-toolchains
    test -d $HOME/.cargo/bin && set -x PATH $HOME/.cargo/bin $PATH
    test -d $HOME/.juliaup/bin && set -gx PATH $HOME/.juliaup/bin $PATH
    test -d $HOME/.miniforge3/bin && $HOME/.miniforge3/bin/conda "shell.fish" hook | source
    # Load utilities
    test -x (command -v trash) && abbr rm trash
    # Exports and Aliases
    set -gx PATH $HOME/.local/bin $PATH
    set -gx PATH /opt/cuda/bin $PATH
    set -gx LD_LIBRARY_PATH /opt/cuda/lib64/ $LD_LIBRARY_PATH
    set -gx EDITOR /usr/bin/helix && abbr hx '$EDITOR'
    set -gx LESSHISTFILE -
    # Move prompt bottom
    tput cup "$LINES"
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/vishal/.ghcup/bin # ghcup-env
