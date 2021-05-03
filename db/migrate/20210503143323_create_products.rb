class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
    add_index :products, :description
  end
end
