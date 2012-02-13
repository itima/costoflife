require 'test_helper'

class ParametertoobjectintheprocessionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parametertoobjectintheprocessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parametertoobjectintheprocession" do
    assert_difference('Parametertoobjectintheprocession.count') do
      post :create, :parametertoobjectintheprocession => { }
    end

    assert_redirected_to parametertoobjectintheprocession_path(assigns(:parametertoobjectintheprocession))
  end

  test "should show parametertoobjectintheprocession" do
    get :show, :id => parametertoobjectintheprocessions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parametertoobjectintheprocessions(:one).to_param
    assert_response :success
  end

  test "should update parametertoobjectintheprocession" do
    put :update, :id => parametertoobjectintheprocessions(:one).to_param, :parametertoobjectintheprocession => { }
    assert_redirected_to parametertoobjectintheprocession_path(assigns(:parametertoobjectintheprocession))
  end

  test "should destroy parametertoobjectintheprocession" do
    assert_difference('Parametertoobjectintheprocession.count', -1) do
      delete :destroy, :id => parametertoobjectintheprocessions(:one).to_param
    end

    assert_redirected_to parametertoobjectintheprocessions_path
  end
end
