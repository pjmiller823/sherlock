class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :number_of_bedrooms
      t.integer :number_of_baths
      t.integer :square_footage
      t.integer :price
      t.text :description
      t.text :image_data
      t.integer :year_built
      t.integer :created_by_id

      t.timestamps
    end
  end
end
