class User < ApplicationRecord
    has_secure_password
    has_one :account
    has_many :todo_lists
    has_many :todos, through: :todo_lists, source: :todo_items
end
