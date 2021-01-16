class AddTitleToNomimovies < ActiveRecord::Migration[6.1]
  def change
    add_column :nomimovies, :title, :string
  end
end
