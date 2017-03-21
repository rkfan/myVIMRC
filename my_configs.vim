" Get rid of these bells....
set vb

" Highlight the cursor line
set cursorline

" Get line numbers
set number

" Monokai colors
set background=dark
syntax enable
colorscheme monokai

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
        set nu!
            set rnu
        endfunction
        function! ToggleRelativeOn()
                set rnu!
                    set nu
                endfunction
                autocmd FocusLost * call ToggleRelativeOn()
                autocmd FocusGained * call ToggleRelativeOn()
                autocmd InsertEnter * call ToggleRelativeOn()
                autocmd InsertLeave * call ToggleRelativeOn()
