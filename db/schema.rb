ActiveRecord::Schema.define(version: 2021_04_07_225443) do

  enable_extension "plpgsql"

  create_table "card_sets", force: :cascade do |t|
    t.string "set"
    t.integer "user_id"
    t.string "set_name"
  end

  create_table "keynotes", force: :cascade do |t|
    t.string "mode"
    t.string "keynote"
    t.string "image"
    t.string "audio"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", default: ""
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "card_sets", "users"
end
