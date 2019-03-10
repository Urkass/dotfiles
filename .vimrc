set nocompatible                        " Выключаем совместимость с vi
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'git://github.com/pangloss/vim-javascript.git'
" Plugin 'jelera/vim-javascript-syntax'
call vundle#end()           
filetype plugin indent on    
set autoread                             " Перечитывать открытые файлы если они были изменены извне

filetype on                              " Включаем распознавание типов файлов и типо-специфичные плагины
filetype plugin on
filetype indent on

set encoding=utf-8                       " Кодировка по-умолчанию utf-8
set termencoding=utf-8                   " Кодировка терминала тоже utf-8
set fileencodings=utf-8,cp1251,koi8-r    " Список кодировок, которые vim будет перебирать при открытии файла

set novisualbell                         " Выключаем бибиканье и миганиe

set si                                   " Умное добавление табов (с учетом скобок и пр.)
set tabstop=4                            " Ширина таба - 4 пробела
set shiftwidth=4                         " Количество вставляемых пробелов при использовании < и >
set expandtab                            " Разворачивать табы в пробелы
set smarttab                             " Удалять пробелы по 4, если они в начале строки

syntax enable
" set background=dark
" set t_Co=256
if (has("termguicolors"))
    set termguicolors
endif
colorscheme OceanicNext
set number                               " Включить нумерацию строк
" set t_Co=256                             " Сказать виму, что твой терминал поддерживает 256 цветов
