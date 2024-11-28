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
#set -gx PATH /opt/cuda/bin $PATH
#set -gx LD_LIBRARY_PATH /opt/cuda/lib64/ $LD_LIBRARY_PATH
set -gx LESSHISTFILE -
set -gx EDITOR helix
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/vishal/.ghcup/bin # ghcup-env
set -gx HELIX_RUNTIME $HOME/Repos/open-source/helix/runtime

# fzf
setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_T_COMMAND 'fd --type file --follow'
setenv FZF_DEFAULT_OPTS '--height 20%'

function fish_user_key_bindings
    # bind \cl 'echo bad'
    alias clear 'echo bad'
    # bind \cz 'fg>/dev/null ^/dev/null'
    if functions -q fzf_key_bindings
        fzf_key_bindings
    end
end

# Fish git prompt
set __fish_git_prompt_showuntrackedfiles yes
set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream none
set -g fish_prompt_pwd_dir_length 3

function fish_prompt
    # Move prompt bottom
    tput cup "$LINES"
    # Rest of the prompt
    set_color brblack
    echo -n "["(date "+%H:%M")"] "
    set_color blue
    echo -n (hostnamectl hostname)
    if [ $PWD != $HOME ]
        set_color brblack
        echo -n ':'
        set_color yellow
        echo -n (basename $PWD)
    end
    set_color green
    printf '%s ' (__fish_git_prompt)
    set_color red
    echo -n '| '
    set_color normal
end
