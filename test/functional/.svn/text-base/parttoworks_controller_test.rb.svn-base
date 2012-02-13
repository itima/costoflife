require 'test_helper'

class ParttoworksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parttoworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parttowork" do
    assert_difference('Parttowork.count') do
      post :create, :parttowork => { }
    end

    assert_redirected_to parttowork_path(assigns(:parttowork))
  end

  test "should show parttowork" do
    get :show, :id => parttoworks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parttoworks(:one).to_param
    assert_response :success
  end

  test "should update parttowork" do
    put :update, :id => parttoworks(:one).to_param, :parttowork => { }
    assert_redirected_to parttowork_path(assigns(:parttowork))
  end

  test "should destroy parttowork" do
    assert_difference('Parttowork.count', -1) do
      delete :destroy, :id => parttoworks(:one).to_param
    end

    assert_redirected_to parttoworks_path
  end
end
