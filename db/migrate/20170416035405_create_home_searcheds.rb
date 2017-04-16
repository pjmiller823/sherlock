class CreateHomeSearcheds < ActiveRecord::Migration[5.0]
  def change
    create_table :home_searched do |t|

      t.timestamps
    end
  end
end
