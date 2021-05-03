class Sale < ApplicationRecord
  belongs_to :custumer
  belongs_to :product
  belongs_to :vendor
end
