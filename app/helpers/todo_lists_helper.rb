module TodoListsHelper
    # Use callbacks to share common setup or constraints between actions.
    def all_todo_items_complete(todo_list)
        allDone = true
        todo_list.todo_items.each do |item|
            if !item.done?
                allDone = false
                break
            end
        end
        return allDone
    end
end
