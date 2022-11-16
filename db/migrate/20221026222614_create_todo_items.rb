class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :task_title
      t.string :description
      t.boolean :done
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
