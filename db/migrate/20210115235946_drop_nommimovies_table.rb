class DropNommimoviesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :nommimovies do |t|
      t.string "title"
      t.integer "year"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
