class AddVillageTagToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :village_tag, :string
  end
end
