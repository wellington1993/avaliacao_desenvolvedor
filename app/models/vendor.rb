class Vendor < ApplicationRecord
  validates :name, uniqueness: true
end

