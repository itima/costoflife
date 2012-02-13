require 'test_helper'

class ObjectgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objectgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objectgroup" do
    assert_difference('Objectgroup.count') do
      post :create, :objectgroup => { }
    end

    assert_redirected_to objectgroup_path(assigns(:objectgroup))
  end

  test "should show objectgroup" do
    get :show, :id => objectgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => objectgroups(:one).to_param
    assert_response :success
  end

  test "should update objectgroup" do
    put :update, :id => objectgroups(:one).to_param, :objectgroup => { }
    assert_redirected_to objectgroup_path(assigns(:objectgroup))
  end

  test "should destroy objectgroup" do
    assert_difference('Objectgroup.count', -1) do
      delete :destroy, :id => objectgroups(:one).to_param
    end

    assert_redirected_to objectgroups_path
  end
end
