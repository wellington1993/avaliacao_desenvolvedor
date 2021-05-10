class Customer < ApplicationRecord
  validates :name, uniqueness: true
end

