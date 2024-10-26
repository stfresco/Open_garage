class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.string :brand
      t.string :color
      t.integer :capacity
      t.text :extras
      t.float :price, default: 0
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
