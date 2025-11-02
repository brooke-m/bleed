class EnforceUniquePartyCodes < ActiveRecord::Migration[8.1]
  def change
    add_index :parties, :code, unique: true
  end
end
