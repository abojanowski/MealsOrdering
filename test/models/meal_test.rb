require 'test_helper'

class MealTest < ActiveSupport::TestCase
 
  def setup
  	@meal = Meal.new(name: "Example", price: "0.99", 
  									 active:true, image: "https://example")
  end
  
  test "name should be unique" do 
  	duplicate_meal = @meal.dup
  	duplicate_meal.name = @meal.name.upcase
  	@meal.save
  	assert_not duplicate_meal.valid?
  end	

  test "Meal validation should eject valid burger name" do
    valid_name = %w[Sport Burger, Fit Burger, Big Burger, Roasted Burger]

    valid_name.each do |v|
      @meal.name = v
      assert @meal.valid?, "#{v.inspect} should be valid"
    end
  end

  test "Meal validation should reject invalid burger name" do
  	invalid_name = %w[1burger, burger]

  	invalid_name.each do |i|
  		@meal.name = i
  		assert_not @meal.valid?, "#{i.inspect} should be invalid"
  	end
  end
end
