json.extract! todo_item, :id, :due_date, :task_title, :description, :done, :created_at, :updated_at
json.url todo_item_url(todo_item, format: :json)
