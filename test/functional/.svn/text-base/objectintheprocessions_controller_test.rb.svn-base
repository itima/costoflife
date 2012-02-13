require 'test_helper'

class ObjectintheprocessionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objectintheprocessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objectintheprocession" do
    assert_difference('Objectintheprocession.count') do
      post :create, :objectintheprocession => { }
    end

    assert_redirected_to objectintheprocession_path(assigns(:objectintheprocession))
  end

  test "should show objectintheprocession" do
    get :show, :id => objectintheprocessions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => objectintheprocessions(:one).to_param
    assert_response :success
  end

  test "should update objectintheprocession" do
    put :update, :id => objectintheprocessions(:one).to_param, :objectintheprocession => { }
    assert_redirected_to objectintheprocession_path(assigns(:objectintheprocession))
  end

  test "should destroy objectintheprocession" do
    assert_difference('Objectintheprocession.count', -1) do
      delete :destroy, :id => objectintheprocessions(:one).to_param
    end

    assert_redirected_to objectintheprocessions_path
  end
end
