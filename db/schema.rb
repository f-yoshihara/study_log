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

ActiveRecord::Schema.define(version: 2018_12_29_055338) do

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
    t.text "impressions"
    t.integer "pomodoros"
    t.string "keyword0"
    t.string "keyword1"
    t.string "keyword2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_contents_on_book_id"
  end

  create_table "post_its", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "memo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0, null: false
    t.integer "parent_id"
    t.integer "lft", null: false
    t.integer "rgt", null: false
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false
    t.datetime "in_progress_from"
    t.datetime "done_at"
    t.datetime "deleted_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_post_its_on_user_id"
  end

  create_table "snippets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_snippets_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contents", "books"
  add_foreign_key "post_its", "users"
  add_foreign_key "snippets", "users"
end
