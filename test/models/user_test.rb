require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  	@user = User.new(name: "Example_name", image_url: 
  									 "https://www.dropbox.com/s/yjgmf84iohi7f4i/Sport.png?raw=1")
  end

  test "name should be present" do
  	@user.name = " " 	
  	assert_not @user.valid?
  end

  test "image_url should be present" do
  	@user.image_url = " " 	
  	assert_not @user.valid?
  end

  def test_user_from_omniauth
  	num_of_users = User.count
  	auth = OmniAuth.config.mock_auth[:identity]
  	User.from_omniauth(auth)
  	assert_equal num_of_users + 1, User.count, " Number of users is #{num_of_users}"

  	user = User.last
  	username = " "
  	auth.slice(:provider, :uid).try do
  		username = auth.info.name
  	end
  	assert_equal username, user.name, "Username"
  end

end
