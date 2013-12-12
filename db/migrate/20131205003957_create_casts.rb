class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :name
      t.string :company
      t.text :description
      t.text :dates_locations
      t.text :compensation

      t.timestamps
    end
  end
end
