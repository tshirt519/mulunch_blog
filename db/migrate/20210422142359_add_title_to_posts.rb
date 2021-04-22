class AddTitleToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :text
  end
end
