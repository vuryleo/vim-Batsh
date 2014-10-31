This project adds [Batsh] support to vim. It covers syntax, indenting, and more.

[Batsh]: http://batsh.org/

## Table of Contents

- Installation
  - [Requirements](#requirements)
  - [Install using Vundle](#install-using-vundle)

## Requirements

 - vim 7.4 or later

## Install using Vundle

1. [Install Vundle] into `~/.vim/bundle/`.

[Install Vundle]: https://github.com/gmarik/vundle#quick-start

2. Configure your vimrc for Vundle. Here's a bare-minimum vimrc that enables all
   the features of `vim-Batsh`:


   ```vim
   set nocompatible
   filetype off

   set rtp+=~/.vim/bundle/vundle/
   call vundle#rc()

   Bundle 'vuryleo/vim-Batsh'

   syntax enable
   filetype plugin indent on
   ```

   If you're adding Vundle to a built-up vimrc, just make sure all these calls
   are in there and that they occur in this order.

3. Open vim and run `:BundleInstall`.

To update, open vim and run `:BundleInstall!` (notice the bang!)

## Thanks
Thanks to [vim-SugarCpp](https://github.com/ppwwyyxx/vim-SugarCpp) and [vim-coffee-script](https://github.com/kchmck/vim-coffee-script).

Actually only minor modification is done to make it work for Batsh
