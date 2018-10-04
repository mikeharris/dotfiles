if not test -f ~/.config/fish/functions/fisher.fish
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

source ~/.config/fisherman/fry/conf.d/fry.fish
fry use 2.5.1
fry config auto on

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

source ~/.config/fish/.iterm2_shell_integration.(basename $SHELL)

alias vi nvim
alias vim nvim
alias ll 'ls -alGh'
set -gx PYENV_ROOT "/Users/mharris/.pyenv"
set -gx GOPATH "$HOME/go"
set -gx GEM_HOME "$HOME/.gem"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths $GOPATH/bin $fish_user_paths
set -gx fish_user_paths $GEM_HOME/bin $fish_user_paths

# For compilers to find mysql-client you may need to set:
set -gx LDFLAGS "-L/usr/local/opt/mysql-client/lib"
set -gx CPPFLAGS "-I/usr/local/opt/mysql-client/include"

# For pkg-config to find mysql-client you may need to set:
set -gx PKG_CONFIG_PATH "/usr/local/opt/mysql-client/lib/pkgconfig"
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

