class AddReferenceToCategoryFromTodoLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :todo_lists, :category
  end
end
