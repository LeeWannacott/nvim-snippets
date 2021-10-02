
api = vim.api -- Shorten calling of the api.

function switch_statement()
  local str = [[
switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
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
  switch_statement = switch_statement
}
