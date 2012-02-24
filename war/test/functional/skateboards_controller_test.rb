require 'test_helper'

class SkateboardsControllerTest < ActionController::TestCase
  setup do
    @skateboard = skateboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skateboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skateboard" do
    assert_difference('Skateboard.count') do
      post :create, skateboard: @skateboard.attributes
    end

    assert_redirected_to skateboard_path(assigns(:skateboard))
  end

  test "should show skateboard" do
    get :show, id: @skateboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skateboard
    assert_response :success
  end

  test "should update skateboard" do
    put :update, id: @skateboard, skateboard: @skateboard.attributes
    assert_redirected_to skateboard_path(assigns(:skateboard))
  end

  test "should destroy skateboard" do
    assert_difference('Skateboard.count', -1) do
      delete :destroy, id: @skateboard
    end

    assert_redirected_to skateboards_path
  end
end
