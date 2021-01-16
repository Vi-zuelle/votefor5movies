class DropNomimoviesTables < ActiveRecord::Migration[6.1]
  drop_table :nomimovies_tables do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
