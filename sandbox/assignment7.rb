require_relative '../config/environment'

# Show done? working for some todo_items
todoItem1 = TodoItem.find_by task_title: "Grapes"
todoItem2 = TodoItem.find_by task_title: "Milk"
puts todoItem1.done?
puts todoItem2.done?

# Show password_digest working
User.create! [
    { login: "newlogin", password: "new_password" },
    { login: "newlogin1", password: "new_password1" }
]
newUser1 = User.find_by login: "newlogin"
newUser2 = User.find_by login: "newlogin"
puts "newUser1 password_digest: " + newUser1.password_digest;
puts "newUser2 password_digest: " + newUser2.password_digest;

