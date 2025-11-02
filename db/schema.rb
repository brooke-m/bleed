# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_11_02_171209) do
  create_table "characters", force: :cascade do |t|
    t.integer "abjuration", default: 0
    t.integer "conjuration", default: 0
    t.datetime "created_at", null: false
    t.integer "divination", default: 0
    t.integer "enchantment", default: 0
    t.integer "evocation", default: 0
    t.integer "illusion", default: 0
    t.string "name"
    t.integer "necromancy", default: 0
    t.integer "party_id"
    t.integer "total_casts", default: 0
    t.integer "transmutation", default: 0
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_characters_on_party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_parties_on_code", unique: true
  end
end
