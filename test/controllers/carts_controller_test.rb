require 'test_helper'

class CartsControllerTest < ActionController::TestCase

 	test "should get show" do 
		get :show
    assert_response :success	
    assert_select "title", "Meals Cart | Burger Meals"
 	end

end
