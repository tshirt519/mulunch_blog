class AddThumbnailToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :thumbnail, :string
  end
end
