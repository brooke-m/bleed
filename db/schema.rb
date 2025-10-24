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

ActiveRecord::Schema[8.1].define(version: 2025_10_24_171518) do
  create_table "characters", force: :cascade do |t|
    t.integer "abjuration"
    t.integer "conjuration"
    t.datetime "created_at", null: false
    t.integer "divination"
    t.integer "enchantment"
    t.integer "evocation"
    t.integer "illusion"
    t.string "name"
    t.integer "necromancy"
    t.integer "party_id"
    t.integer "total_casts"
    t.integer "transmutation"
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_characters_on_party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
