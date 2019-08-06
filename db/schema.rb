# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_01_211418) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "c_img_file_name"
    t.string "c_img_content_type"
    t.bigint "c_img_file_size"
    t.datetime "c_img_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "p_name"
    t.text "p_description"
    t.decimal "p_price"
    t.integer "p_quantify"
    t.string "p_send"
    t.string "decimal"
    t.boolean "p_available"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "age"
    t.string "img_file_name"
    t.string "img_content_type"
    t.bigint "img_file_size"
    t.datetime "img_updated_at"
    t.string "state"
    t.string "city"
    t.string "street"
    t.string "udi"
    t.string "provider"
    t.integer "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
