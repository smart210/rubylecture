class AddPost < ActiveRecord::Migration
  def change
    add_column :posts, :author_name, :string
    change_column :posts, :content, :text
  end
end
