class Category < ApplicationRecord
  #belongs_to :todo_lists
  has_many :todo_lists
  validates :title, presence: true
end
