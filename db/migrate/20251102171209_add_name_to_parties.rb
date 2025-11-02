class AddNameToParties < ActiveRecord::Migration[8.1]
  def change
     add_column :parties, :name, :string
  end
end
