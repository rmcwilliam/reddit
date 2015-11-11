require 'test_helper'

class RegistrationsControllerTest  < ActionController::TestCase

  test "new method creates an empty model" do
  get :new
  assert_response :success
  assert_not_nil assigns(:user)
  assert_template :new
 end

 test "should create user" do
  assert_difference("User.count") do
    post :create,  {username: "billy", email: "ryan@gmail", password: "password"}
 end
  assert_redirected_to links_path
 end

end

