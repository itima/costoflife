require 'test_helper'

class ParttoroutinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parttoroutines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parttoroutine" do
    assert_difference('Parttoroutine.count') do
      post :create, :parttoroutine => { }
    end

    assert_redirected_to parttoroutine_path(assigns(:parttoroutine))
  end

  test "should show parttoroutine" do
    get :show, :id => parttoroutines(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parttoroutines(:one).to_param
    assert_response :success
  end

  test "should update parttoroutine" do
    put :update, :id => parttoroutines(:one).to_param, :parttoroutine => { }
    assert_redirected_to parttoroutine_path(assigns(:parttoroutine))
  end

  test "should destroy parttoroutine" do
    assert_difference('Parttoroutine.count', -1) do
      delete :destroy, :id => parttoroutines(:one).to_param
    end

    assert_redirected_to parttoroutines_path
  end
end
