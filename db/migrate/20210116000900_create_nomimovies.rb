class CreateNomimovies < ActiveRecord::Migration[6.1]
  def change
    create_table :nomimovies do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
