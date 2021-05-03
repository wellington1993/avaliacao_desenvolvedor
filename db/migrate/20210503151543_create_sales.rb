class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.references :custumer, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
