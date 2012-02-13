require 'test_helper'

class ObjectgrouptoobjectgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objectgrouptoobjectgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objectgrouptoobjectgroup" do
    assert_difference('Objectgrouptoobjectgroup.count') do
      post :create, :objectgrouptoobjectgroup => { }
    end

    assert_redirected_to objectgrouptoobjectgroup_path(assigns(:objectgrouptoobjectgroup))
  end

  test "should show objectgrouptoobjectgroup" do
    get :show, :id => objectgrouptoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => objectgrouptoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should update objectgrouptoobjectgroup" do
    put :update, :id => objectgrouptoobjectgroups(:one).to_param, :objectgrouptoobjectgroup => { }
    assert_redirected_to objectgrouptoobjectgroup_path(assigns(:objectgrouptoobjectgroup))
  end

  test "should destroy objectgrouptoobjectgroup" do
    assert_difference('Objectgrouptoobjectgroup.count', -1) do
      delete :destroy, :id => objectgrouptoobjectgroups(:one).to_param
    end

    assert_redirected_to objectgrouptoobjectgroups_path
  end
end
