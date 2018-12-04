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

ActiveRecord::Schema.define(version: 2018_12_03_105251) do

  create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.integer "price"
    t.integer "status", default: 0, null: false
    t.date "started_at"
    t.date "finished_at"
    t.text "purpose"
    t.integer "pages"
    t.date "bought_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.bigint "book_id"
    t.integer "pages"
    t.text "Impressions"
    t.integer "pomodoros"
    t.string "keyword0"
    t.string "keyword1"
    t.string "keyword2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_contents_on_book_id"
  end

  add_foreign_key "contents", "books"
end
