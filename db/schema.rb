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

ActiveRecord::Schema.define(version: 20160606063458) do

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "title",       limit: 60,                 null: false
    t.string   "description",                            null: false
    t.integer  "view_count",             default: 0
    t.boolean  "enable",                 default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "fk_rails_cac8c778bb", using: :btree
  end

  create_table "communitiy_contents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "html",                  default: false, null: false
    t.text    "content", limit: 65535,                 null: false
  end

  create_table "user_login_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "client_ip",                  null: false
    t.boolean  "enable",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "fk_rails_6146581a82", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "회원테이블" do |t|
    t.string   "email",              limit: 100,                 null: false
    t.string   "name",               limit: 40,                  null: false
    t.string   "encrypted_password", limit: 60,                  null: false
    t.string   "phone",              limit: 20,                  null: false
    t.date     "birthday",                                       null: false
    t.boolean  "sex",                            default: false, null: false
    t.integer  "weight"
    t.integer  "height"
    t.boolean  "enable",                         default: false, null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "communities", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "communitiy_contents", "communities", column: "id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_login_logs", "users", on_update: :cascade, on_delete: :cascade
end
