
api = vim.api -- Shorten calling of the api.

function async_await()
  local str = [[
async function myFetch() {
  let response = await fetch('coffee.jpg');
  if (!response.ok) {
    throw new Error(`HTTP error! status: ${response.status}`);
  }
  let myBlob = await response.blob();
}
myFetch()
.catch(e => {
  console.log('There has been a problem with your fetch operation: ' + e.message);
});
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
  async_await = async_await
}
