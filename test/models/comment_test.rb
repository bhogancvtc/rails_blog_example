require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "need body" do
    c = Comment.new body: "", author: "Homer", email: "foo@example.com"
    c.valid?
    assert c.errors[:body].include? "can't be blank"
  end

  test "need author" do
    c = Comment.new body: "wat", author: "", email: "foo@example.com"
    c.valid?
    assert c.errors[:author].include? "can't be blank"
  end

  test "need email" do
    c = Comment.new body: "wat", author: "Barney", email: ""
    c.valid?
    assert c.errors[:email].include? "can't be blank"
  end
end
