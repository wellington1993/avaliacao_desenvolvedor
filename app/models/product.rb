class Product < ApplicationRecord
  validates :description, uniqueness: true
end

