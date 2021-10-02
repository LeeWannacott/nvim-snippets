
api = vim.api -- Shorten calling of the api.
function for_each()

  local str = [[array1.forEach(element => console.log(element));]]

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
    for_each = for_each
}
