require 'test_helper'

class SessionsControllerTest < ActionController::TestCase



	def setup 
		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:identity]
		debugger
	end

	test "should create authentication" do
		# log_in_user(:identity)
		# debugger
		assert_difference('User.count') do
			get :create, :provider => "identity"
		end
		user = User.last
		assert_equal session[:user_id], user.id
		assert_redirected_to root_url
	end

	test "should create session" do
		get :create, :provider => "identity"
		user = User.last
		assert_equal session[:user_id], user.id
		# get :destroy
		log_out_user(user.id)
		assert_equal session[:user_id], nil
	end
end
