-- Dogecomments - Lee Wannacott - 2021

if vim.fn.has('nvim-0.5') == 0 then
    print("snippets requires nvim version >=0.5")
end

api = vim.api -- Shorten calling of the api.


-- require("Snippets/filetypes") 

-- filetype = vim.bo.filetype
-- print(filetype)

function snippets()
end

local snippets =
{
    snippets = snippets
}

return snippets
