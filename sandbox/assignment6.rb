require_relative '../config/environment'

# 4 - Show mapping TodoItems directly on the User model
puts User.last.todos.to_yaml

# 5a - Show gender only accepts male, female, N/A (male, female shown in seed data)
User.create! [
    { login: "newlogin", password: "new_password" },
    { login: "newlogin1", password: "new_password1" }
]
newUser = User.find_by login: "newlogin"
# doesnt work
newUser.create_account gender: "Maale", age: 31, first_name: "New", last_name: "Login"
acct = Account.find_by(first_name: "New")
puts acct.to_yaml
# works
newUser.create_account gender: "N/A", age: 31, first_name: "Old", last_name: "Login"
acct = Account.find_by(first_name: "Old")
puts acct.to_yaml

# 5b - Show age only accepts 20 to 100
newUser1 = User.find_by login: "newlogin1"
# doesnt work (<20)
newUser1.create_account gender: "Female", age: 19, first_name: "New1", last_name: "Login"
acct = Account.find_by(first_name: "New1")
puts acct.to_yaml
# doesnt work (>100)
newUser1.create_account gender: "Female", age: 101, first_name: "New1", last_name: "Login"
acct = Account.find_by(first_name: "New1")
puts acct.to_yaml
# works
newUser1.create_account gender: "Female", age: 50, first_name: "Old1", last_name: "Login"
acct = Account.find_by(first_name: "Old1")
puts acct.to_yaml

# 6 - Show TodoItem & TodoList being returned in ascending order
puts "-----------TodoItems-----------"
puts TodoItem.pluck(:task_title, :due_date, :done)
puts "-----------TodoLists-----------"
puts TodoList.pluck(:list_name, :list_due_date)