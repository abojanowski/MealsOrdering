# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Meal.delete_all
Meal.create! id: 1, name: "Sport Burger", 		 price: 2.49, active: true, image: 'https://www.dropbox.com/s/yjgmf84iohi7f4i/Sport.png?raw=1'
Meal.create! id: 2, name: "Fit Burger", 			 price: 1.29, active: true, image: 'https://www.dropbox.com/s/swfamvqsmcj0z46/Fresh.png?raw=1'
Meal.create! id: 3, name: "Big Burger", 	 	   price: 1.99, active: true, image: 'https://www.dropbox.com/s/in5rs2gayzs7vpr/Big.png?raw=1'
Meal.create! id: 4, name: "Roasted Burger", 	 price: 1.59, active: true, image: 'https://www.dropbox.com/s/nerryi7srr14456/Roasted.png?raw=1'
