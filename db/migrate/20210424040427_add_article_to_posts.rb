class AddArticleToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :article, :text
  end
end
