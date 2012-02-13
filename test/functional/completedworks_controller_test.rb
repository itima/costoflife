require 'test_helper'

class CompletedworksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:completedworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create completedwork" do
    assert_difference('Completedwork.count') do
      post :create, :completedwork => { }
    end

    assert_redirected_to completedwork_path(assigns(:completedwork))
  end

  test "should show completedwork" do
    get :show, :id => completedworks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => completedworks(:one).to_param
    assert_response :success
  end

  test "should update completedwork" do
    put :update, :id => completedworks(:one).to_param, :completedwork => { }
    assert_redirected_to completedwork_path(assigns(:completedwork))
  end

  test "should destroy completedwork" do
    assert_difference('Completedwork.count', -1) do
      delete :destroy, :id => completedworks(:one).to_param
    end

    assert_redirected_to completedworks_path
  end
end
