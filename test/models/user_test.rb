require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without name" do
    user = User.new
    assert_not user.save
  end

  test "should not save user with same name" do
    user = User.new
    assert_not user.save
  end

  # {controller: "registrations", action: "new"}.must_route_to "/signup"

  # assert_generates "/signup", controller: "registrations", action: "new"

  # assert_generates "/signup", controller: "registrations", action: "create"

  # #  get "/signup", to: "registrations#new"
  # post "/signup", to: "registrations#create"

  # describe User do
  #   it { should have_many :comments, :links }
  # end
end
