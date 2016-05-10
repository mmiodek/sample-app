require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
	test "test error message" do
		get login_path
		assert_template 'sessions/new'
		post login_path, session: {email:"foo", password:"bar"}
		assert_template 'sessions/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?, "Flash message did't disappear after rendering new page"
	end
end
