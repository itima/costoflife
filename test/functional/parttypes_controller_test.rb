require 'test_helper'

class ParttypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parttype" do
    assert_difference('Parttype.count') do
      post :create, :parttype => { }
    end

    assert_redirected_to parttype_path(assigns(:parttype))
  end

  test "should show parttype" do
    get :show, :id => parttypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parttypes(:one).to_param
    assert_response :success
  end

  test "should update parttype" do
    put :update, :id => parttypes(:one).to_param, :parttype => { }
    assert_redirected_to parttype_path(assigns(:parttype))
  end

  test "should destroy parttype" do
    assert_difference('Parttype.count', -1) do
      delete :destroy, :id => parttypes(:one).to_param
    end

    assert_redirected_to parttypes_path
  end
end
