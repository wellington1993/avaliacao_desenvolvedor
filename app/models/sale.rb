class Sale < ApplicationRecord
  require 'csv'
  belongs_to :customer
  belongs_to :product
  belongs_to :vendor

  def self.import(filename)
    # Itera as linhas
    CSV.foreach(filename, col_sep: "\t", headers: true, header_converters: :symbol) do |row|
      # comprador:"Marty McFly" descrio:"R$20 Sneakers for R$5" preo_unitrio:"5.0" quantidade:"1"
      #  endereo:"123 Fake St" fornecedor:"Sneaker Store Emporium">

      customer_record = Customer.find_or_create_by(name: row[:comprador])
      product_record = Product.find_or_create_by(description: row[:descrio], price: row[:preo_unitrio])
      vendor_record = Vendor.find_or_create_by(name: row[:fornecedor], address: row[:endereo])
      sale_record = Sale.find_or_create_by(quantity: row[:quantidade], customer: customer_record, \
                                product: product_record, vendor: vendor_record, \
                                total: (product_record.price * row[:quantidade].to_f) )
    end
  end
end

