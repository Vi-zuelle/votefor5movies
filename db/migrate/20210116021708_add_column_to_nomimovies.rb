class AddColumnToNomimovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :nomimovies, :user, index: true
    add_foreign_key :nomimovies, :users
  end
end
