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

ActiveRecord::Schema.define(version: 20160205030130) do

  create_table "cards", force: :cascade do |t|
    t.boolean  "visible"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "deck_id"
    t.string   "name"
    t.string   "question_text"
    t.text     "answer_text"
    t.text     "background_color"
    t.text     "foreground_color"
    t.text     "font_size"
    t.text     "font_style"
    t.string   "picture"
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id"

  create_table "decks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "creation_date"
    t.datetime "last_modified"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
