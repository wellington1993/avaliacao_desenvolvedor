# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_03_151543) do

  create_table "custumers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["description"], name: "index_products_on_description"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "custumer_id", null: false
    t.integer "product_id", null: false
    t.integer "vendor_id", null: false
    t.integer "quantity"
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["custumer_id"], name: "index_sales_on_custumer_id"
    t.index ["product_id"], name: "index_sales_on_product_id"
    t.index ["vendor_id"], name: "index_sales_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_vendors_on_name"
  end

  add_foreign_key "sales", "custumers"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "vendors"
end
