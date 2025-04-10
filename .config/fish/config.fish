if status --is-interactive
    abbr -a g  git
    abbr -a ga 'git add -p'
    abbr -a gc 'git checkout'
    abbr -a hx '$EDITOR'
    abbr -a l  eza
    abbr -a la 'eza -la'
    abbr -a ll 'eza -l'
    abbr -a ls eza
    abbr -a o  xdg-open
    abbr -a p  'sudo pacman'
    abbr -a pi 'sudo pacman -S'
    abbr -a pu 'sudo pacman -Syu'
    abbr -a rm trash
    abbr -a wd 'cd (cat /home/vishal/workingdir)'
    abbr -a y yazi

    # lang-toolchains
    set -gx PATH "$HOME/.miniconda/bin" $PATH
    set -gx PATH "$HOME/.cargo/bin" $PATH
# set -gx PATH "$HOME/.miniforge3/bin" $PATH  # commented out by conda initialize
    set -gx PATH "$HOME/.juliaup/bin" $PATH
    set -gx PATH "$HOME/.local/bin" $PATH
    set -gx PATH "$HOME/node_modules/vscode-json-languageserver/bin" $PATH

    #set -gx PATH /opt/cuda/bin $PATH
    #set -gx LD_LIBRARY_PATH /opt/cuda/lib64/ $LD_LIBRARY_PATH

    # setenv LESSHISTFILE -
    setenv HELIX_RUNTIME $HOME/dev/open-source/tools/helix/runtime
    setenv EDITOR /home/vishal/.local/bin/hx
    setenv BROWSER /usr/bin/vivaldi-stable

    function fish_user_key_bindings
        # fish_vi_key_bindings
        bind \cz 'fg 2>/dev/null; commandline -f repaint'
        bind \ck kill-line
        bind \el y
        # bind \cc 'commandline ""'
        bind \cl 'commandline ""'
        alias clear 'commandline ""'
    end

    # source (/usr/bin/starship init fish --print-full-init | psub)
    zoxide init fish | source
    fzf --fish | source

    # Fish git prompt
    set __fish_git_prompt_showuntrackedfiles yes
    set __fish_git_prompt_showdirtystate yes
    set __fish_git_prompt_showstashstate ''
    set __fish_git_prompt_showupstream none
    set -g fish_prompt_pwd_dir_length 1

    # theming
    # source $HOME/dev/others/base16/templates/tinted-fzf/fish/base16-gruvbox-dark-hard.fish
    # source $HOME/dev/others/base16/templates/base16-shell/profile_helper.fish
    # base16-gruvbox-dark-hard

end
