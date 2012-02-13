require 'test_helper'

class ObjecttypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objecttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objecttype" do
    assert_difference('Objecttype.count') do
      post :create, :objecttype => { }
    end

    assert_redirected_to objecttype_path(assigns(:objecttype))
  end

  test "should show objecttype" do
    get :show, :id => objecttypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => objecttypes(:one).to_param
    assert_response :success
  end

  test "should update objecttype" do
    put :update, :id => objecttypes(:one).to_param, :objecttype => { }
    assert_redirected_to objecttype_path(assigns(:objecttype))
  end

  test "should destroy objecttype" do
    assert_difference('Objecttype.count', -1) do
      delete :destroy, :id => objecttypes(:one).to_param
    end

    assert_redirected_to objecttypes_path
  end
end
