
api = vim.api -- Shorten calling of the api.
function arrow_function()

  local str = [[
hello = (world) => {
  return world;
}]]

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
    arrow_function = arrow_function
}
