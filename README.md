# Description
For this app, I built a rails API for storing, creating, and listing...TODOS!

## To run
Enter the root directory and open your command line interface of choice.  Within the root folder, enter the command `rails server` to start the application.  In order to view the application, open up your web browser of choice and go to the url: `localhost:3000`

If your application is running successfully, you should see the application that displays the words: <br><br>
<strong>Todo or not Todo</strong>

## Commmands
### Viewing all Todos
In order to view all the todos from the database, the user must enter the url:  `http://localhost:3000/todos`

### View individual Todos
In order to view an individual todo, the user must enter a url in the format: `http://localhost:3000/todos/1`

In case a todo is requested that doesn't exist, such as entering the url: `http://localhost:3000/todos/9999999` the user will see an error message.

### Creating a new Todo
In order to create a new todo, the user must click the 'create' button, fill out the resulting form and submit.

### Marking a Todo as complete
A user has the option to mark a Todo as complete from the home page by clicking on the complete button.

### Deleting a Todo
A user has the option to delete a Todo from the home page by clicking on the delete button.