#/bin/sh

if [ $# = 0 ]; then
  target="~/.vim/pack/plugins/start/"
else
  target="$1.vim/pack/plugins/start/"
fi

echo "Set plugins to $target"

set_plugin () {
  if [ -e "$target$2" ]; then
    rm -rf $target$2
  fi
  git clone https://github.com/$1/$2.git $target$2
}

set_plugin scrooloose nerdtree
set_plugin fatih      vim-go
set_plugin itchyny    lightline.vim
set_plugin tpope      vim-fugitive
set_plugin jistr      vim-nerdtree-tabs
set_plugin airblade   vim-gitgutter 
