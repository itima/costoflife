require 'test_helper'

class ParametertoobjectgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parametertoobjectgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parametertoobjectgroup" do
    assert_difference('Parametertoobjectgroup.count') do
      post :create, :parametertoobjectgroup => { }
    end

    assert_redirected_to parametertoobjectgroup_path(assigns(:parametertoobjectgroup))
  end

  test "should show parametertoobjectgroup" do
    get :show, :id => parametertoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parametertoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should update parametertoobjectgroup" do
    put :update, :id => parametertoobjectgroups(:one).to_param, :parametertoobjectgroup => { }
    assert_redirected_to parametertoobjectgroup_path(assigns(:parametertoobjectgroup))
  end

  test "should destroy parametertoobjectgroup" do
    assert_difference('Parametertoobjectgroup.count', -1) do
      delete :destroy, :id => parametertoobjectgroups(:one).to_param
    end

    assert_redirected_to parametertoobjectgroups_path
  end
end
