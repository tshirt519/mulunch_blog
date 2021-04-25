class AddArticleColumnsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :article2, :text
    add_column :posts, :article3, :text
    add_column :posts, :article4, :text
    add_column :posts, :article5, :text
  end
end
