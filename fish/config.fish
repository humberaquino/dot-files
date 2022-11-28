export KUBECONFIG=$HOME/.kube/config 

export EDITOR=nvim
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"

#export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig
#For compilers to find openssl you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

#For pkg-config to find openssl you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/Library/Python/3.8/bin $PATH
set PATH $HOME/.emacs.d/bin $PATH
set PATH /usr/local/bin $PATH
set PATH /usr/local/anaconda3/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/.luarocks/bin $PATH
set PATH $HOME/.rd/bin $PATH
set PATH $HOME/.local/bin $PATH
set PATH $HOME/Bin $PATH
set PATH /usr/local/opt/grep/libexec/gnubin $PATH
set PATH /Users/humber/Programs/istio-1.15.3/bin $PATH

source /usr/local/opt/asdf/asdf.fish

# BAT theme
export BAT_THEME="TwoDark"

set fish_greeting
set -x FZF_DEFAULT_COMMAND 'fd'

# Golang
# set gopath (go env GOPATH)
# set PATH $gopath/bin $PATH

# GOLANG configurations
set -x GOPATH $HOME/golang
set -x GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

