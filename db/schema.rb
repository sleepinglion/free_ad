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

ActiveRecord::Schema.define(version: 20161223140420) do

  create_table "article_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                                            null: false
    t.integer  "article_category_id"
    t.string   "title",                    limit: 60,                null: false
    t.integer  "articles_count",                      default: 0,    null: false
    t.integer  "article_categories_count",            default: 0,    null: false
    t.boolean  "enable",                              default: true, null: false
    t.boolean  "leaf",                                default: true, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.index ["article_category_id"], name: "index_article_categories_on_article_category_id", using: :btree
    t.index ["title"], name: "index_article_categories_on_title", unique: true, using: :btree
    t.index ["user_id"], name: "index_article_categories_on_user_id", using: :btree
  end

  create_table "article_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "article_id",                       null: false
    t.string   "name",               limit: 60
    t.string   "encrypted_password", limit: 40
    t.string   "salt",               limit: 40
    t.text     "content",            limit: 65535, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["article_id"], name: "fk_rails_67982717fa", using: :btree
    t.index ["user_id"], name: "fk_rails_afdfe01fd6", using: :btree
  end

  create_table "article_contents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "html",                  default: false, null: false
    t.text    "content", limit: 65535,                 null: false
  end

  create_table "article_photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "article_id",                            null: false
    t.string   "photo",                                 null: false
    t.string   "alt",        limit: 60,                 null: false
    t.boolean  "default",               default: false, null: false
    t.boolean  "enable",                default: true,  null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["article_id"], name: "fk_rails_065de67769", using: :btree
  end

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "article_category_id"
    t.string   "title",                  limit: 60,                  null: false
    t.string   "description",                                        null: false
    t.string   "photo",                  limit: 100
    t.integer  "view_count",                         default: 0,     null: false
    t.integer  "recommend_count",                    default: 0,     null: false
    t.integer  "article_comments_count",             default: 0,     null: false
    t.boolean  "enable",                             default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["article_category_id"], name: "fk_rails_ab638c9159", using: :btree
    t.index ["user_id"], name: "fk_rails_3d31dad1cc", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "impressions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "impressionable_type", limit: 100
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name",     limit: 60
    t.string   "action_name",         limit: 60
    t.string   "view_name",           limit: 60
    t.string   "request_hash",        limit: 130
    t.string   "ip_address",          limit: 60
    t.string   "session_hash",        limit: 100
    t.text     "message",             limit: 65535
    t.text     "referrer",            limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index", using: :btree
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index", using: :btree
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index", using: :btree
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index", using: :btree
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index", using: :btree
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index", using: :btree
    t.index ["user_id"], name: "index_impressions_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      limit: 60,                null: false
    t.boolean  "enable",                default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.index ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_roles_users_on_user_id", unique: true, using: :btree
  end

  create_table "taggings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context", using: :btree
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy", using: :btree
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type", using: :btree
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",                       collation: "utf8_bin"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true, using: :btree
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
    t.string   "nickname",           limit: 40,                  null: false
    t.string   "encrypted_password", limit: 60,                  null: false
    t.string   "phone",              limit: 20
    t.date     "birthday"
    t.boolean  "sex",                            default: false
    t.string   "photo",              limit: 100
    t.boolean  "enable",                         default: false, null: false
    t.integer  "sign_in_count",                  default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
  end

  add_foreign_key "article_comments", "articles", on_update: :cascade, on_delete: :cascade
  add_foreign_key "article_comments", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "article_contents", "articles", column: "id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "article_photos", "articles", on_update: :cascade, on_delete: :cascade
  add_foreign_key "articles", "article_categories", on_update: :cascade, on_delete: :cascade
  add_foreign_key "articles", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "roles_users", "roles", on_update: :cascade, on_delete: :cascade
  add_foreign_key "roles_users", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_login_logs", "users", on_update: :cascade, on_delete: :cascade
end
