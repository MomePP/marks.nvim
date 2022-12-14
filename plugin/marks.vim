if exists("g:loaded_marks")
  finish
endif
let g:loaded_marks = 1

hi default link MarkSignHL Identifier
" hi default link MarkSignLineHL Normal
hi default link MarkSignNumHL CursorLineNr
hi default link MarkVirtTextHL Comment

command! -nargs=? MarksToggleSigns silent lua require'marks'.toggle_signs(<args>)
command! MarksListBuf exe "lua require'marks'.mark_state:buffer_to_list()" | lopen
command! MarksListGlobal exe "lua require'marks'.mark_state:global_to_list()" | lopen
command! MarksListAll exe "lua require'marks'.mark_state:all_to_list()" | lopen
command! MarksQFListBuf exe "lua require'marks'.mark_state:buffer_to_list('quickfixlist')" | copen
command! MarksQFListGlobal exe "lua require'marks'.mark_state:global_to_list('quickfixlist')" | copen
command! MarksQFListAll exe "lua require'marks'.mark_state:all_to_list('quickfixlist')" | copen

nnoremap <Plug>(Marks-set) <cmd> lua require'marks'.set()<cr>
nnoremap <Plug>(Marks-setnext) <cmd> lua require'marks'.set_next()<cr>
nnoremap <Plug>(Marks-toggle) <cmd> lua require'marks'.toggle()<cr>
nnoremap <Plug>(Marks-delete) <cmd> lua require'marks'.delete()<cr>
nnoremap <Plug>(Marks-deleteline) <cmd> lua require'marks'.delete_line()<cr>
nnoremap <Plug>(Marks-deletebuf) <cmd> lua require'marks'.delete_buf()<cr>
nnoremap <Plug>(Marks-preview) <cmd> lua require'marks'.preview()<cr>
nnoremap <Plug>(Marks-next) <cmd> lua require'marks'.next()<cr>
nnoremap <Plug>(Marks-prev) <cmd> lua require'marks'.prev()<cr>
