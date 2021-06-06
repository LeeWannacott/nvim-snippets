fun! Arrow_function()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/arrow_function").arrow_function()
endfun

fun! Fetch_data()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/fetch_data").fetch_data()
endfun
" Keymappings to call different functions.
noremap <silent><leader>sa :call Arrow_function() <CR>
noremap <silent><leader>sf :call Fetch_data() <CR>
