# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141130193035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: true do |t|
    t.string   "illustration"
    t.text     "text"
    t.text     "left_colum_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "assets", force: true do |t|
    t.string   "storage_uid"
    t.string   "storage_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage_width"
    t.integer  "storage_height"
    t.float    "storage_aspect_ratio"
    t.integer  "storage_depth"
    t.string   "storage_format"
    t.string   "storage_mime_type"
    t.string   "storage_size"
  end

  create_table "blog_posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "introtext"
    t.text     "text"
    t.date     "date"
    t.string   "smallpic"
    t.string   "illustration"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
    t.text     "gallery"
    t.string   "video_link"
    t.boolean  "event"
    t.integer  "event_city_id"
    t.string   "taglist"
    t.boolean  "delta",         default: true, null: false
    t.string   "short_text"
  end

  add_index "blog_posts", ["event_city_id"], name: "index_blog_posts_on_event_city_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "sort_index"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "position"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
  end

  create_table "event_cities", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "place"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "event_cities", ["event_id"], name: "index_event_cities_on_event_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "date"
    t.text     "description"
    t.string   "fb_link"
    t.string   "vk_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "illustration"
  end

  create_table "gallery_posts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
  end

  create_table "index_pages", force: true do |t|
    t.string   "header"
    t.string   "slogan"
    t.text     "text1"
    t.text     "text2"
    t.text     "text3"
    t.text     "text4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "header1"
    t.string   "header2"
    t.string   "header3"
    t.string   "fullscreenpic"
    t.string   "name"
    t.text     "text5"
    t.string   "alias"
    t.string   "small_picture"
    t.string   "left_picture"
    t.string   "right_picture"
    t.string   "left_link"
    t.string   "left_link_text"
    t.string   "right_block_tittle"
    t.string   "right_block_text"
    t.string   "bottom_picture"
    t.string   "right_block_link"
    t.string   "bottom_link"
    t.string   "bottom_text"
    t.string   "left_block_tittle"
    t.string   "left_block_text"
    t.string   "right_link_text"
  end

  create_table "partners", force: true do |t|
    t.string   "link"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  add_index "partners", ["city_id"], name: "index_partners_on_city_id", using: :btree

  create_table "promo_blocks", force: true do |t|
    t.text     "block_html"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "index_page_id"
  end

  add_index "promo_blocks", ["index_page_id"], name: "index_promo_blocks_on_index_page_id", using: :btree

  create_table "shop_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
  end

  create_table "shop_galleries", force: true do |t|
    t.text     "gallery"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shop_items", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "price"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.integer  "sort_index"
    t.integer  "shop_category_id"
  end

  add_index "shop_items", ["shop_category_id"], name: "index_shop_items_on_shop_category_id", using: :btree

  create_table "teammates", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "about_id"
  end

  add_index "teammates", ["about_id"], name: "index_teammates_on_about_id", using: :btree

end
