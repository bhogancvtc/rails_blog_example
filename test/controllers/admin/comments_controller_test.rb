require 'test_helper'

class Admin::CommentsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should get index" do
    # http_login comes from the test_helper file
    http_login
    get :index, post_id: @post
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should show comment" do
    http_login
    get :show, id: @comment, post_id: @post
    assert_response :success
  end

  test "should get edit" do
    http_login
    get :edit, id: @comment, post_id: @post
    assert_response :success
  end

  test "should update comment" do
    http_login
    patch :update, post_id: @post, id: @comment, comment: { author: @comment.author, body: @comment.body, email: @comment.email, post_id: @comment.post_id }
    assert_redirected_to admin_post_path(@post)
  end

  test "should destroy comment" do
    http_login
    assert_difference('Comment.count', -1) do
      delete :destroy, post_id: @post, id: @comment
    end

    assert_redirected_to admin_post_path(@post)
  end
end
