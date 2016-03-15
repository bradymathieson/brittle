require 'test_helper'

class BrittsControllerTest < ActionController::TestCase
  setup do
    @britt = britts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:britts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create britt" do
    assert_difference('Britt.count') do
      post :create, britt: { content: @britt.content, user_id: @britt.user_id }
    end

    assert_redirected_to britt_path(assigns(:britt))
  end

  test "should show britt" do
    get :show, id: @britt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @britt
    assert_response :success
  end

  test "should update britt" do
    patch :update, id: @britt, britt: { content: @britt.content, user_id: @britt.user_id }
    assert_redirected_to britt_path(assigns(:britt))
  end

  test "should destroy britt" do
    assert_difference('Britt.count', -1) do
      delete :destroy, id: @britt
    end

    assert_redirected_to britts_path
  end
end
