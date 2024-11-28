#!/usr/bin/fish
if ! set -q TMUX
    if test -d ~/dev/others/base16/templates/fish-shell
        set base16_fish_theme gruvbox-dark-hard
        # set base16_fish_theme gruber
        set fish_function_path $fish_function_path ~/dev/others/base16/templates/fish-shell/functions
        builtin source ~/dev/others/base16/templates/fish-shell/conf.d/base16.fish
    end
    exec tmux
end
