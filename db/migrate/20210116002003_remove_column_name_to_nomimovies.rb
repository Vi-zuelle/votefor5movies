class RemoveColumnNameToNomimovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :nomimovies, :name, :string
  end
end
