class CreateCharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :total_casts

      # casts by school
      t.integer :abjuration
      t.integer :conjuration
      t.integer :divination
      t.integer :enchantment
      t.integer :evocation
      t.integer :illusion
      t.integer :necromancy
      t.integer :transmutation

      t.references :party
      t.timestamps
    end
  end
end
