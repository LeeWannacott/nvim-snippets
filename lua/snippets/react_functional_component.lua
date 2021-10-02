

api = vim.api -- Shorten calling of the api.

function react_functional_component()
    local str = [[
import React from 'react';

function App() {
  const greeting = 'Hello Function Component!';
  return (<h1>{greeting}</h1>);
}

export default App;
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
    react_functional_component = react_functional_component
}
