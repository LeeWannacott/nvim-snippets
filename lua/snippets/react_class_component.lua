


api = vim.api -- Shorten calling of the api.

function react_class_component()
    local str = [[
  import React, { Component } from 'react';
  import MyComponent from './MyComponent';

  constructor(props) {
    super(props);
    this.state = {
      reptile: props.reptile,
    };
  }

  class MyOtherComponent extends Component {
    render() {
      return (
        <div>
          <div>This is my other component.</div>
          <MyComponent />
        </div>
      );
    }
  }

export default MyOtherComponent;
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
    react_class_component = react_class_component
}
