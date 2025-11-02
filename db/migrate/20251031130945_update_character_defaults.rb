class UpdateCharacterDefaults < ActiveRecord::Migration[8.1]
  def change
    change_column_default(:characters, :abjuration, from: nil, to: 0)
    change_column_default(:characters, :conjuration, from: nil, to: 0)
    change_column_default(:characters, :divination, from: nil, to: 0)
    change_column_default(:characters, :enchantment, from: nil, to: 0)
    change_column_default(:characters, :evocation, from: nil, to: 0)
    change_column_default(:characters, :illusion, from: nil, to: 0)
    change_column_default(:characters, :necromancy, from: nil, to: 0)
    change_column_default(:characters, :transmutation, from: nil, to: 0)
    change_column_default(:characters, :total_casts, from: nil, to: 0)
  end
end