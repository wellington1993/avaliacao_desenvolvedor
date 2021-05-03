class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
    add_index :vendors, :name
  end
end
