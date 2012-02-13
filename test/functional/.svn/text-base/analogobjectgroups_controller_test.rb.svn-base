require 'test_helper'

class AnalogobjectgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analogobjectgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analogobjectgroup" do
    assert_difference('Analogobjectgroup.count') do
      post :create, :analogobjectgroup => { }
    end

    assert_redirected_to analogobjectgroup_path(assigns(:analogobjectgroup))
  end

  test "should show analogobjectgroup" do
    get :show, :id => analogobjectgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => analogobjectgroups(:one).to_param
    assert_response :success
  end

  test "should update analogobjectgroup" do
    put :update, :id => analogobjectgroups(:one).to_param, :analogobjectgroup => { }
    assert_redirected_to analogobjectgroup_path(assigns(:analogobjectgroup))
  end

  test "should destroy analogobjectgroup" do
    assert_difference('Analogobjectgroup.count', -1) do
      delete :destroy, :id => analogobjectgroups(:one).to_param
    end

    assert_redirected_to analogobjectgroups_path
  end
end
