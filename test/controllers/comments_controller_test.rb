require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should get index" do
    get :index, post_id: @post
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new, post_id: @post
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post, comment: { author: @comment.author, body: @comment.body, email: @comment.email, post_id: @comment.post_id }
    end

    assert_redirected_to @post
  end

  test "should show comment" do
    get :show, id: @comment, post_id: @post
    assert_response :success
  end

end
