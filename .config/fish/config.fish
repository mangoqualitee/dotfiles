abbr -a o xdg-open
abbr -a g git
abbr -a ga 'git add -p'
abbr -a gc 'git checkout'
abbr -a p 'sudo pacman'
abbr -a pi 'sudo pacman -S'
abbr -a pu 'sudo pacman -Syu'
abbr -a rm trash
abbr -a hx '$EDITOR'

if command -v eza >/dev/null
    abbr -a l eza
    abbr -a ls eza
    abbr -a ll 'eza -l'
    abbr -a la 'eza -la'
end

# Load lang-toolchains
source "$HOME/.cargo/env.fish"
$HOME/.miniforge3/bin/conda "shell.fish" hook | source
test -d $HOME/.juliaup/bin && set -gx PATH $HOME/.juliaup/bin $PATH

# Exports and Aliases
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.config/zide/bin $PATH
#set -gx PATH /opt/cuda/bin $PATH
#set -gx LD_LIBRARY_PATH /opt/cuda/lib64/ $LD_LIBRARY_PATH
set -gx LESSHISTFILE -
set -gx EDITOR /home/vishal/.cargo/bin/hx
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/vishal/.ghcup/bin # ghcup-env
set -gx HELIX_RUNTIME $HOME/dev/open-source/tools/helix/runtime
# set -gx BROWSER /usr/bin/vivaldi-stable

# fish_vi_key_bindings
function fish_user_key_bindings
    # bind \cz 'fg>/dev/null ^/dev/null'
    bind \ck kill-line
    bind \cl 'commandline ""'
    bind \el y
    bind \cc 'commandline ""' # no new line on C-c
    alias clear 'commandline ""' # no new line on C-c
    if functions -q fzf_key_bindings
        fzf_key_bindings
    end
end

alias y yazi
# function y
#     set tmp (mktemp -t "yazi-cwd.XXXXXX")
#     yazi $argv --cwd-file="$tmp"
#     if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
#         builtin cd -- "$cwd"
#     end
#     rm -f -- "$tmp"
# end

source (/usr/bin/starship init fish --print-full-init | psub)
zoxide init fish | source

if status --is-interactive
    # fzf
    setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
    setenv FZF_CTRL_T_COMMAND 'fd --type file --follow'
    setenv FZF_DEFAULT_OPTS '--height 20%'

    if test -d ~/dev/others/base16/templates/fish-shell
        #ls ~/dev/others/base16/templates/fish-shell/functions/base16-*.fish | sed -E 's/.*base16-(.*).fish/\1/g'
        set fish_function_path $fish_function_path ~/dev/others/base16/templates/fish-shell/functions
        builtin source ~/dev/others/base16/templates/fish-shell/conf.d/base16.fish
    end
end
