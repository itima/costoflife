require 'test_helper'

class RoutinetoobjectgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routinetoobjectgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create routinetoobjectgroup" do
    assert_difference('Routinetoobjectgroup.count') do
      post :create, :routinetoobjectgroup => { }
    end

    assert_redirected_to routinetoobjectgroup_path(assigns(:routinetoobjectgroup))
  end

  test "should show routinetoobjectgroup" do
    get :show, :id => routinetoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => routinetoobjectgroups(:one).to_param
    assert_response :success
  end

  test "should update routinetoobjectgroup" do
    put :update, :id => routinetoobjectgroups(:one).to_param, :routinetoobjectgroup => { }
    assert_redirected_to routinetoobjectgroup_path(assigns(:routinetoobjectgroup))
  end

  test "should destroy routinetoobjectgroup" do
    assert_difference('Routinetoobjectgroup.count', -1) do
      delete :destroy, :id => routinetoobjectgroups(:one).to_param
    end

    assert_redirected_to routinetoobjectgroups_path
  end
end
