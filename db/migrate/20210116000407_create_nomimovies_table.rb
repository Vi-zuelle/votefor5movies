class CreateNomimoviesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :nomimovies_tables do |t|

      t.timestamps
    end
  end
end
