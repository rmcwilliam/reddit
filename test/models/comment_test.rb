require 'test_helper'

class CommentTest < ActiveSupport::TestCase

 test "title must be present to save" do
    comment = Comment.new
    comment.content = nil

    refute comment.save
    assert comment.errors[:content].present?
  end

  test "link id must be present to save" do
    comment = Comment.new
    comment.link_id = nil 

    refute comment.save
    assert comment.errors[:link_id].present?
  end

end
