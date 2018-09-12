ActiveRecord::Schema.define(version: 2018_09_12_010832) do

  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.text "agenda"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
