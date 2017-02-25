class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :size
      t.string :name
      t.integer :max_capacity

      t.timestamps null: false
    end
  end
end
