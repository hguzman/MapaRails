require 'test_helper'

class ClassVehiclesControllerTest < ActionController::TestCase
  setup do
    @class_vehicle = class_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_vehicle" do
    assert_difference('ClassVehicle.count') do
      post :create, class_vehicle: { clase: @class_vehicle.clase }
    end

    assert_redirected_to class_vehicle_path(assigns(:class_vehicle))
  end

  test "should show class_vehicle" do
    get :show, id: @class_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_vehicle
    assert_response :success
  end

  test "should update class_vehicle" do
    patch :update, id: @class_vehicle, class_vehicle: { clase: @class_vehicle.clase }
    assert_redirected_to class_vehicle_path(assigns(:class_vehicle))
  end

  test "should destroy class_vehicle" do
    assert_difference('ClassVehicle.count', -1) do
      delete :destroy, id: @class_vehicle
    end

    assert_redirected_to class_vehicles_path
  end
end
