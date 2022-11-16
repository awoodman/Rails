# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Account.destroy_all
Tag.destroy_all
TodoItem.destroy_all
TodoList.destroy_all
User.destroy_all

User.create! [
    { login: "Matt", password: "abc123" },
    { login: "Tim", password: "abc123" }
]

# Matt account
matt = User.find_by login: "Matt"
matt.create_account gender: "Male", age: 31, first_name: "Matt", last_name: "Matthewson"
# Tim Account
tim = User.find_by login: "Tim"
tim.create_account gender: "Male", age: 38, first_name: "Tim", last_name: "Timothyson"

# # TodoList
# matt.todo_lists.create list_name: "Groceries", list_due_date: "2022-11-10"
# matt.todo_lists.create list_name: "House Cleaning", list_due_date: "2022-11-11"
# # TodoItem
# mattTodoGroceries = TodoList.find_by list_name: "Groceries"
# mattTodoGroceries.todo_items.create due_date: "2022-11-10", task_title: "Grapes", description: "Get grapes", done: true
# mattTodoGroceries.todo_items.create due_date: "2022-11-10", task_title: "Milk", description: "Get milk", done: false
# mattTodoGroceries.todo_items.create due_date: "2022-11-10", task_title: "Cheerios", description: "Get cheerios", done: true
# mattTodoClean = TodoList.find_by list_name: "House Cleaning"
# mattTodoClean.todo_items.create due_date: "2022-11-11", task_title: "Bathroom", description: "Mop the bathroom", done: false
# mattTodoClean.todo_items.create due_date: "2022-11-11", task_title: "Bedroom", description: "Dust the bedroom", done: true
# mattTodoClean.todo_items.create due_date: "2022-11-11", task_title: "Closet", description: "Organize the closet", done: false
# # Tag
# bathroomTodo = TodoItem.find_by task_title: "Bathroom"
# bathroomTodo.tags.create tag_name: "Surface clean"
# bathroomTodo.tags.create tag_name: "Disinfect"


# tom = User.find_by login: "tbrady"
# tom.create_account gender: "Male", age: 45, first_name: "Tom", last_name: "Brady"
# tom.todo_lists.create list_name: "Abs Workout", list_due_date: "2022-11-15"
# tomTodoAbs = TodoList.find_by list_name: "Abs Workout"
# tomTodoAbs.todo_items.create due_date: "2022-11-15", task_title: "Situps", description: "50 situps", done: false
# tomTodoAbs.todo_items.create due_date: "2022-11-15", task_title: "Planks", description: "60 seconds of planks", done: false
# tomTodoAbs.todo_items.create due_date: "2022-11-15", task_title: "Burpees", description: "50 burpees", done: false
# absTodo = TodoItem.find_by task_title: "Situps"
# absTodo.tags.create tag_name: "Middle"
# absTodo1 = TodoItem.find_by task_title: "Planks"
# absTodo1.tags.create tag_name: "Lower"
# absTodo2 = TodoItem.find_by task_title: "Burpees"
# absTodo2.tags.create tag_name: "Upper"

# danica = User.find_by login: "dpatrick"
# danica.create_account gender: "Female", age: 40, first_name: "Danica", last_name: "Patrick"
# danica.todo_lists.create list_name: "Car Maintenance", list_due_date: "2022-11-20"
# danicaTodoCarMaint = TodoList.find_by list_name: "Car Maintenance"
# danicaTodoCarMaint.todo_items.create due_date: "2022-11-20", task_title: "Oil", description: "Change oil with 10w-40 full synthetic", done: true
# danicaTodoCarMaint.todo_items.create due_date: "2022-11-20", task_title: "Brakes", description: "Change brake pads and rotors", done: true
# danicaTodoCarMaint.todo_items.create due_date: "2022-11-20", task_title: "Wipers", description: "Change wiper blades", done: true
# oilTodo = TodoItem.find_by task_title: "Oil"
# oilTodo.tags.create tag_name: "Longetivity"
# brakeTodo = TodoItem.find_by task_title: "Brakes"
# brakeTodo.tags.create tag_name: "Safety"
# wiperTodo = TodoItem.find_by task_title: "Wipers"
# wiperTodo.tags.create tag_name: "Visibility"