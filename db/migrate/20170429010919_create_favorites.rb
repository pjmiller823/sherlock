class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :home_id
      t.string :created_by_id

      t.timestamps
    end
    add_index :favorites, :home_id
    add_index :favorites, :created_by_id
  end
end
