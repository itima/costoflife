require 'test_helper'

class CommenttypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commenttype" do
    assert_difference('Commenttype.count') do
      post :create, :commenttype => { }
    end

    assert_redirected_to commenttype_path(assigns(:commenttype))
  end

  test "should show commenttype" do
    get :show, :id => commenttypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => commenttypes(:one).to_param
    assert_response :success
  end

  test "should update commenttype" do
    put :update, :id => commenttypes(:one).to_param, :commenttype => { }
    assert_redirected_to commenttype_path(assigns(:commenttype))
  end

  test "should destroy commenttype" do
    assert_difference('Commenttype.count', -1) do
      delete :destroy, :id => commenttypes(:one).to_param
    end

    assert_redirected_to commenttypes_path
  end
end
