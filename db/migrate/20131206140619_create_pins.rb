class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :name
      t.string :user_name
      t.string :age
      t.string :city
      t.string :state
      t.text :bio
      t.text :credits

      t.timestamps
    end
  end
end
