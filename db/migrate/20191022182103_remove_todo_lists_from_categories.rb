class RemoveTodoListsFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :categories, :todo_lists, null: false, foreign_key: true
  end
end
mo