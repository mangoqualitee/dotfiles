# curl -fsSL https://raw.githubusercontent.com/ronniedroid/getnf/master/install.sh | bash
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install fish starship zoxide fzf lsd bat neovim
# install: llvm, miniforge3, rust, julia, haskell
# install: clion, rustrover, vscode-web


if status is-interactive
  set fish_greeting
  fish_vi_key_bindings

  # Homebrew initialization
  if test -d "/opt/homebrew"
      set -gx HOMEBREW_PREFIX "/opt/homebrew/"
  else if test -d "/home/linuxbrew/.linuxbrew"
      set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew/"
  else
      echo "Homebrew is not installed in expected locations."
  end
  eval ($HOMEBREW_PREFIX/bin/brew shellenv)

  # Load fzf, starship, zoxide, and conda
  starship init fish | source
  zoxide init fish | source
  fzf --fish | source

  conda "shell.fish" hook | source

  source "$HOME/.cargo/env.fish"
  if test -d "$HOME/.juliaup/bin"
    set -gx PATH "$HOME/.juliaup/bin" $PATH
  end
  if test -d "$HOME/miniforge3/bin"
    set -gx PATH $HOME/miniforge3/bin $PATH
  end 


  # Exports and Aliases
  set -gx LDFLAGS "-L$HOMEBREW_PREFIX/opt/llvm/lib -L$HOMEBREW_PREFIX/opt/llvm/lib/c++ -Wl,-rpath,$HOMEBREW_PREFIX/opt/llvm/lib/c++" $LDFLAGS
  set -gx CPPFLAGS "-I$HOMEBREW_PREFIX/opt/llvm/include" $CPPFLAGS
  set -gx PATH "$HOMEBREW_PREFIX/opt/llvm/bin" $PATH
  set -gx PATH "$HOME/.local/bin" $PATH
  set -gx EDITOR nvim

  alias cd 'z'
  alias ls 'lsd'
  alias cat 'bat'
  alias rm 'trash'
  alias vim 'nvim'
  alias tree 'lsd --tree'
  alias g++ '/opt/homebrew/opt/llvm/bin/clang -std=c++17 -Wall'
  #alias jupyterlisten 'ssh -NL localhost:1234:localhost:8888 fbd'

  #fastfetch
  #bat ~/stack.md
end


# haskell configuration
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/gyanantaran/.ghcup/bin $PATH # ghcup-env
