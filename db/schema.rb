# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_01_223842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "trades", force: :cascade do |t|
    t.string "ticker", null: false
    t.integer "quantity", null: false
    t.float "price", null: false
    t.string "order_type", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_type"], name: "index_trades_on_order_type"
    t.index ["user_id"], name: "index_trades_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "telegram_id"
    t.string "username"
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["telegram_id"], name: "index_users_on_telegram_id", unique: true
  end

end
