class AddForeignKeyMovieToNomimovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :nomimovies, :movie, index: true
    add_foreign_key :nomimovies, :movies
  end
end
