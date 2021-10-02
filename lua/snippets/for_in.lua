api = vim.api -- Shorten calling of the api.

function for_in()
    local str = [[
for (const property in object) {
  console.log(`${property}: ${object[property]}`);
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
  for_in = for_in
}
