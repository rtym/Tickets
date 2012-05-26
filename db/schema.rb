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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120526152013) do

  create_table "ticket_responses", :force => true do |t|
    t.integer  "ticket_id"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ticket_responses", ["ticket_id"], :name => "index_ticket_responses_on_ticket_id"
  add_index "ticket_responses", ["user_id"], :name => "index_ticket_responses_on_user_id"

  create_table "ticket_statuses", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tickets", :force => true do |t|
    t.string   "reporter",         :null => false
    t.string   "email",            :null => false
    t.string   "number",           :null => false
    t.integer  "ticket_status_id", :null => false
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "content",          :null => false
  end

  add_index "tickets", ["ticket_status_id"], :name => "index_tickets_on_ticket_status_id"
  add_index "tickets", ["user_id"], :name => "index_tickets_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "login",      :null => false
    t.string   "name",       :null => false
    t.string   "surname",    :null => false
    t.string   "email",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
