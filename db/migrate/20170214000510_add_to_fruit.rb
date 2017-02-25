class AddToFruit < ActiveRecord::Migration
  def change
    add_column :fruits, :color, :string
    add_column :fruits, :size, :string
    add_column :fruits, :country, :string
    add_column :fruits, :season, :string
  end
end
