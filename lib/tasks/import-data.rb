require 'csv'
desc 'Import Sales from csv'
task :sales do
  filename = File.join Rails.root, '/documentation//dados.txt'
  # Itera as linhas
  CSV.foreach(filename, col_sep: "\t", headers: true, header_converters: :symbol) do |row|
    p  row
    # comprador:"Marty McFly" descrio:"R$20 Sneakers for R$5" preo_unitrio:"5.0" quantidade:"1"
    #  endereo:"123 Fake St" fornecedor:"Sneaker Store Emporium">

    custumer_record = Custumer.create(name: row[:comprador])
    product_record = Product.create(description: row[:descrio], price: row[:preo_unitrio])
    vendor_record = Vendor.create(name: row[:fornecedor], address: row[:endereo])
    sale_record = Sale.create(quantity: row[:quantidade], custumer: custumer_record, \
    			      product: product_record, vendor: vendor_record, \
                              total: (product_record.price * row[:quantidade]) )
    p sale_record
  end
end

