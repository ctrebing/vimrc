#!/bin/sh

git submodule add https://github.com/nvie/vim-flake8 bundle/flake8
git submodule add https://github.com/davidhalter/jedi-vim bundle/jedi
git submodule add https://github.com/kien/ctrlp.vim bundle/ctrlp
git submodule add https://github.com/Lokaltog/powerline bundle/powerline

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

