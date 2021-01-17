class RemoveTitleAndYearAndImageToNomimovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :nomimovies, :title
    remove_column :nomimovies, :year
    remove_column :nomimovies, :image_url
  end
end
