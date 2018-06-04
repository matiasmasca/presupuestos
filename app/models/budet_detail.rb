class BudetDetail < ApplicationRecord
  belongs_to :budget
  has_many :product
end
