import ReactOnRails from 'react-on-rails';

import TodoApp from '../../../src/TodoList.res.js'

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  TodoApp
});
