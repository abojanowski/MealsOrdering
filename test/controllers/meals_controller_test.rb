require 'test_helper'

class MealsControllerTest < ActionController::TestCase

	test "should get index" do 
		get :index
    assert_response :success	
    assert_select "title", "Home | Burger Meals"
 	end

end
