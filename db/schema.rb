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

ActiveRecord::Schema.define(version: 20160715155550) do

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "proposal_requests", force: :cascade do |t|
    t.string   "client_name"
    t.string   "client_industry"
    t.string   "campaign_name"
    t.text     "basic_description"
    t.date     "flight_date_start"
    t.date     "flight_date_end"
    t.string   "staggered"
    t.text     "goals_and_objectives"
    t.float    "budget"
    t.string   "targeting"
    t.string   "geography"
    t.string   "age_group"
    t.string   "gender"
    t.string   "household_income"
    t.string   "interests"
    t.string   "devices"
    t.string   "d_description"
    t.text     "creative_ad_units"
    t.string   "day_parting"
    t.string   "day_parting_description"
    t.string   "success_metrics"
    t.text     "specifications"
    t.text     "insertion_order_terms"
    t.text     "submission_instructions"
    t.string   "acceptable_proposal_formats"
    t.date     "proposal_due_date"
    t.date     "decision_made_by"
    t.text     "selection_criteria"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id"
  end

  add_index "proposal_requests", ["user_id"], name: "index_proposal_requests_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "company_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
