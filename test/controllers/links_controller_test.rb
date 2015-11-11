require "test_helper"

class LinksControllerTest < ActionController::TestCase

  def login_one!
    session[:user_id] = users(:one).id
  end

  test "logged in users can post new links" do
    login_one!
    get :new
    assert_not_nil assigns(:link)
  end

  test "non-logged in users cannot post links" do
    get :new
  end

  test "logged in user can create new link" do
  login_one!
  assert_difference("Link.count")do
    post :create,  {title: "turtles are cool", url: "turtle site"}
 end
  assert_redirected_to links_path
 end
 
end