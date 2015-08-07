require 'test_helper'

class CartclearsControllerTest < ActionController::TestCase
  setup do
    @cartclear = cartclears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartclears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartclear" do
    assert_difference('Cartclear.count') do
      post :create, cartclear: {  }
    end

    assert_redirected_to cartclear_path(assigns(:cartclear))
  end

  test "should show cartclear" do
    get :show, id: @cartclear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartclear
    assert_response :success
  end

  test "should update cartclear" do
    patch :update, id: @cartclear, cartclear: {  }
    assert_redirected_to cartclear_path(assigns(:cartclear))
  end

  test "should destroy cartclear" do
    assert_difference('Cartclear.count', -1) do
      delete :destroy, id: @cartclear
    end

    assert_redirected_to cartclears_path
  end
end
