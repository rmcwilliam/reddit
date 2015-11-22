require 'test_helper'

class UserTest < ActiveSupport::TestCase

  # test "name must be present to save" do
  #   user = User.first
  #   user.email = nil

  #   refute user.save
  #   assert user.errors[:username].present?
  # end

  # test "users must have a password" do
  #   user = users(:one)
  #   user.password = nil

  #   refute user.save
  #   assert user.errors[:password].present?
  # end

  # test "username must be unique" do
  #   user1 = users(:one)
  #   user2 = users(:two)

  #   user2.username = user1.username 
  #   assert_equal user1.username, user2.username

  #   refute user2.save
  #   assert user2.errors[:username].find { |msg| msg.include?("taken")}
  # end

  # test "a user has many comments" do
  #   user = users(:three)
  #   assert user.comments.count == 2
  # end

  # test "a user has many links" do
  #   user = users(:three)
  #   assert user.links.count == 2  
  # end
end
