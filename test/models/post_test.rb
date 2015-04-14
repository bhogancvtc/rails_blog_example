require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "add post" do
    p = Post.new title: "test", body: "wat"
    assert p.valid?
  end

  test "need title" do
    p = Post.new title: "", body: "wat"
    p.valid?
    assert p.errors[:title].include? "can't be blank"
  end

  test "need body" do
    p = Post.new title: "", body: ""
    p.valid?
    assert p.errors[:body].include? "can't be blank"
  end
end
