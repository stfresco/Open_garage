class CreateGarages < ActiveRecord::Migration[7.2]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
