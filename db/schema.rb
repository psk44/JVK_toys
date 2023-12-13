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

ActiveRecord::Schema[7.0].define(version: 2023_12_13_223738) do
  create_table "inventories", force: :cascade do |t|
    t.integer "toy_id", null: false
    t.integer "quantity"
    t.integer "low_inventory_threshold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_id"], name: "index_inventories_on_toy_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "toy_id", null: false
    t.integer "score"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_id"], name: "index_ratings_on_toy_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "toy_id", null: false
    t.integer "quantity_sold"
    t.datetime "sale_date"
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_id"], name: "index_sales_on_toy_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toy_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "toy_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_type_id"], name: "index_toys_on_toy_type_id"
  end

  add_foreign_key "inventories", "toys"
  add_foreign_key "ratings", "toys"
  add_foreign_key "sales", "toys"
  add_foreign_key "toys", "toy_types"
end
