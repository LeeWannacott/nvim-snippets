

api = vim.api -- Shorten calling of the api.

function if_else()
  local str = [[
if () {
} else if () {
} else {
}
]]

 function print_snippet()
    lines = {}
    for s in str:gmatch("[^\r\n]+") do
        table.insert(lines, s)
    end
    -- paste snippet
    api.nvim_put(lines,'l',true,true)
  end

    print_snippet()

end
return{
  if_else = if_else
}
