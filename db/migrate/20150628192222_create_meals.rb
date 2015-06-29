class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 3
      t.boolean :actice

      t.timestamps null: false
    end
  end
end
