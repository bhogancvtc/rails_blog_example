require 'test_helper'

class Admin::PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    # http_login comes from the test_helper file
    http_login
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    http_login
    get :new
    assert_response :success
  end

  test "should create post" do
    http_login
    assert_difference('Post.count') do
      post :create, post: { body: @post.body, title: @post.title }
    end

    assert_redirected_to admin_posts_path
  end

  test "should show post" do
    http_login
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    http_login
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    http_login
    patch :update, id: @post, post: { body: @post.body, title: @post.title }
    assert_redirected_to admin_posts_path
  end

  test "should destroy post" do
    http_login
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to admin_posts_path
  end
end
