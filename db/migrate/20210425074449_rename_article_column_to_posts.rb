class RenameArticleColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :article, :article1
  end
end
