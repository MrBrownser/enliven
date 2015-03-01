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

ActiveRecord::Schema.define(version: 20150301021511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "media", force: :cascade do |t|
    t.string   "description", default: ""
    t.string   "link"
    t.integer  "project_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "mediatype"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "total_likes", default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "fullname"
    t.text     "styles"
    t.text     "summary"
    t.date     "born"
    t.string   "nationality"
    t.string   "ethnicity"
    t.string   "languages"
    t.decimal  "height"
    t.decimal  "chest"
    t.decimal  "waist"
    t.decimal  "hips"
    t.string   "suit"
    t.string   "shirt"
    t.string   "pants"
    t.decimal  "shoes"
    t.string   "eyes"
    t.string   "hair"
    t.text     "actingexp"
    t.text     "battleexp"
    t.text     "adsexp"
    t.text     "teachingexp"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "email"
    t.text     "password_digest"
    t.string   "profile_picture_file_name"
    t.string   "profile_picture_content_type"
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
