class Sale < ApplicationRecord
  require 'csv'
  belongs_to :custumer
  belongs_to :product
  belongs_to :vendor

  def self.import(filename)
    # Itera as linhas
    CSV.foreach(filename, col_sep: "\t", headers: true, header_converters: :symbol) do |row|
      # comprador:"Marty McFly" descrio:"R$20 Sneakers for R$5" preo_unitrio:"5.0" quantidade:"1"
      #  endereo:"123 Fake St" fornecedor:"Sneaker Store Emporium">

      custumer_record = Custumer.create(name: row[:comprador])
      product_record = Product.create(description: row[:descrio], price: row[:preo_unitrio])
      vendor_record = Vendor.create(name: row[:fornecedor], address: row[:endereo])
      sale_record = Sale.create(quantity: row[:quantidade], custumer: custumer_record, \
                                product: product_record, vendor: vendor_record, \
                                total: (product_record.price * row[:quantidade].to_f) )
    end
  end
end

