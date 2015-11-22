require "test_helper"

class LinksControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  # def login_one!
  #   session[:user_id] = users(:one).id
  # end

  # def setup
  #   @request.env["devise.mapping"] = Devise.mappings[:user]
  #   get :new
  # end

  # test "logged in users can create new link object" do
  # sign_in users(:one)
  #  get :new
  #   assert_not_nil assigns(:link)
  # end

  test "non-logged in users cannot create new link object" do
    get :new
  end

  # test "logged in user can create new link" do
  # sign_in users(:one)
  #  assert_difference("Link.count") do
  #   post :create,  {title: "turtles are cool", url: "turtle site"}
  # end
  # assert_redirected_to links_path
  # end

  test "non-logged in user can see index of links" do
   get :index
  end

  # test "logged in user can delete link" do
  # sign_in users(:one)
  # links(:one)
  #  assert_difference("Link.count", -1, "A link should be destroyed") do
  #   delete :destroy, id: links(:one)
  # end
  # assert_redirected_to links_path
  # end
end