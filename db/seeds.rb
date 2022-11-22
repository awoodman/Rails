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

# Many TodoLists
100.times do |ii|
    matt.todo_lists.create list_name: "List_#{ii}", list_due_date: "2022-11-10"
    tdl = TodoList.find_by list_name: "List_#{ii}"
    50.times do |jj|
        tdl.todo_items.create due_date: "2022-11-10", task_title: "idx: #{jj}", description: "idx: #{jj}", done: false
    end
end
