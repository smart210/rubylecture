class AddImageToBook < ActiveRecord::Migration
  def change
    add_column :books, :images, :string
  end
end
