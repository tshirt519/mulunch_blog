class ChangeThumbnailColumnsToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :thumbnail, :thumbnail1
    add_column :posts, :thumbnail2, :string
    add_column :posts, :thumbnail3, :string
    add_column :posts, :thumbnail4, :string
    add_column :posts, :thumbnail5, :string
  end
end
