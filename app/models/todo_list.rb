class TodoList < ApplicationRecord
  belongs_to :user
  has_many :todo_items, :dependent => :delete_all
  default_scope { order list_due_date: :asc }
end
