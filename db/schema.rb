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

ActiveRecord::Schema[7.0].define(version: 2022_05_07_142246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "postal_code"
    t.string "prefecture"
    t.string "city"
    t.string "address1"
    t.string "address2"
    t.boolean "priority_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderinfos", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "address_id"
    t.string "to_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_orderinfos_on_address_id"
    t.index ["user_id"], name: "index_orderinfos_on_user_id"
  end

  create_table "orderproducts", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orderproducts_on_order_id"
    t.index ["product_id"], name: "index_orderproducts_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "genre_id"
    t.bigint "serise_id"
    t.string "name"
    t.integer "price"
    t.string "image"
    t.boolean "sales_status"
    t.boolean "priority_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_products_on_genre_id"
    t.index ["serise_id"], name: "index_products_on_serise_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "given_name", null: false
    t.string "family_name_kana", null: false
    t.string "given_name_kana", null: false
    t.string "email", null: false
    t.string "hashed_password"
    t.boolean "suspended"
    t.boolean "isAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
