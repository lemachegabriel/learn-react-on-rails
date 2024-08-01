// src/TodoList.res
@react.component
let default = () => {
  let (todos, setTodos) = React.useState(() => ["Learn Rescript", "Build a Todo App"])

  let handleAddTodo = () => {
    let newTodo = "New Todo"
    setTodos(_todos => [newTodo, ..._todos])
  }

  <div>
    <h1> {React.string("Todo List")} </h1>
    <ul>
      {todos
      ->Array.map(todo => <li key={todo}> {React.string(todo)} </li>)
      ->React.array}
    </ul>
    <button onClick={_ => handleAddTodo()}> {React.string("Add Todo")} </button>
  </div>
}
