class TodoList < ApplicationRecord
  belongs_to :user
  has_many :todo_items
  default_scope { order list_due_date: :asc }
end
