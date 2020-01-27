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

ActiveRecord::Schema.define(version: 20200127203247) do

  create_table "categories", force: :cascade do |t|
    t.text     "name"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_categories", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "category_id"
    t.text     "subCategory"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "event_categories", ["category_id"], name: "index_event_categories_on_category_id"
  add_index "event_categories", ["event_id"], name: "index_event_categories_on_event_id"

  create_table "event_tags", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "event_tags", ["event_id"], name: "index_event_tags_on_event_id"
  add_index "event_tags", ["tag_id"], name: "index_event_tags_on_tag_id"

  create_table "events", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "phone"
    t.text     "email"
    t.text     "url"
    t.text     "image"
    t.date     "start"
    t.date     "end"
    t.integer  "organization_id"
    t.integer  "hour_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rank"
  end

  add_index "events", ["hour_id"], name: "index_events_on_hour_id"
  add_index "events", ["organization_id"], name: "index_events_on_organization_id"

  create_table "hours", force: :cascade do |t|
    t.string   "sunStart"
    t.string   "sunEnd"
    t.string   "monStart"
    t.string   "monEnd"
    t.string   "tueStart"
    t.string   "tueEnd"
    t.string   "wedStart"
    t.string   "wedEnd"
    t.string   "thuStart"
    t.string   "thuEnd"
    t.string   "friStart"
    t.string   "friEnd"
    t.string   "satStart"
    t.string   "satEnd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_categories", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "category_id"
    t.text     "subCategory"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "organization_categories", ["category_id"], name: "index_organization_categories_on_category_id"
  add_index "organization_categories", ["organization_id"], name: "index_organization_categories_on_organization_id"

  create_table "organization_tags", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "tag_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "organization_tags", ["organization_id"], name: "index_organization_tags_on_organization_id"
  add_index "organization_tags", ["tag_id"], name: "index_organization_tags_on_tag_id"

  create_table "organizations", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "address1"
    t.text     "address2"
    t.text     "city"
    t.text     "state"
    t.integer  "zip"
    t.text     "phone"
    t.text     "email"
    t.text     "website"
    t.text     "image"
    t.integer  "rank"
    t.integer  "user_id"
    t.integer  "hour_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "organizations", ["hour_id"], name: "index_organizations_on_hour_id"
  add_index "organizations", ["user_id"], name: "index_organizations_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.text     "name"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
