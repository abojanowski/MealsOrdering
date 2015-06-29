ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  OmniAuth.config.add_mock(:identity, {
  		:uid => '12345', :info => {
  		:nickname => 'example',
  		:email => 'example@example.com',
  		:name => 'First Second',
  		:first_name => 'First',
  		:las_name => 'Second',
  		:image => 'http://graph.facebook.com/1234567/picture?type=square',
  		:urls => { :Facebook => 'http://www.facebook.com/example'},
  		:location => 'Wroclaw, Poland',
  		:verified => true
  	},
  	:credentials => {
  		:token => "ABCD..",
  		:expirest_at => 1621167205,
  		:expires => true
  	}})

  	def log_in_user(user_id)
  		session[:user_id] = user_id
  	end

  	def log_out_user(user_id)
  		if session[:user_id] == user_id
  			session[:user_id] = nil
  		end
  	end
end
