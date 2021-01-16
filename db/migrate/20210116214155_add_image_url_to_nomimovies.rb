class AddImageUrlToNomimovies < ActiveRecord::Migration[6.1]
  def change
    add_column :nomimovies, :image_url, :string
  end
end
