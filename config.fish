set -x GOPATH $HOME/go
set -x PATH $PATH:$GOPATH/bin

if not test -d $GOPATH
  mkdir $GOPATH
end

if not test -d $GOPATH/bin
  mkdir $GOPATH/bin
end

alias vi='vim'
