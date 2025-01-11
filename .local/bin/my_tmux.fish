#!/usr/bin/fish

if test -d ~/dev/others/base16/templates/fish-shell
    if test "$THEME" = light
        export MANPAGER=hx
        # export MANPAGER="bat --theme gruvbox-light -l man -p'"
        set base16_fish_theme gruvbox-light-hard
        cp ~/.config/alacritty/themes/gruvbox_light_hard.toml ~/.config/alacritty/themes/auto_theme.toml
        ln -sf /home/vishal/dev/open-source/tools/helix/runtime/themes/gruvbox_light_hard.toml /home/vishal/.config/helix/themes/auto_theme.toml
    else if test "$THEME" = dark
        export MANPAGER=hx
        # export MANPAGER="bat --theme gruvbox-dark -l man -p'"
        set base16_fish_theme gruvbox-dark-hard
        cp ~/.config/alacritty/themes/gruvbox_dark_hard.toml ~/.config/alacritty/themes/auto_theme.toml
        ln -sf /home/vishal/dev/open-source/tools/helix/runtime/themes/gruvbox_dark_hard.toml /home/vishal/.config/helix/themes/auto_theme.toml
    else
        echo "\$THEME var not set"
    end

    set fish_function_path $fish_function_path ~/dev/others/base16/templates/fish-shell/functions
    builtin source ~/dev/others/base16/templates/fish-shell/conf.d/base16.fish
end

if ! set -q TMUX
    exec tmux
    # exec fish
end
