class TodoList < ApplicationRecord
  belongs_to :category
  has_many :todo_items
end
