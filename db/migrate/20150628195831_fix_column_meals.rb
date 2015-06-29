class FixColumnMeals < ActiveRecord::Migration
  def change
  	rename_column :meals, :actice, :active
  end
end
