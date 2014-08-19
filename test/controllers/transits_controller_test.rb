require 'test_helper'

class TransitsControllerTest < ActionController::TestCase
  setup do
    @transit = transits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transit" do
    assert_difference('Transit.count') do
      post :create, transit: { transito: @transit.transito }
    end

    assert_redirected_to transit_path(assigns(:transit))
  end

  test "should show transit" do
    get :show, id: @transit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transit
    assert_response :success
  end

  test "should update transit" do
    patch :update, id: @transit, transit: { transito: @transit.transito }
    assert_redirected_to transit_path(assigns(:transit))
  end

  test "should destroy transit" do
    assert_difference('Transit.count', -1) do
      delete :destroy, id: @transit
    end

    assert_redirected_to transits_path
  end
end
