require "test_helper"

class CommentsControllerTest < ActionController::TestCase

  def login_one!
    session[:user_id] = users(:one).id
  end
  
end