class CreateNommimovies < ActiveRecord::Migration[6.1]
  def change
    create_table :nommimovies do |t|
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
