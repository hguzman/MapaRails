require 'test_helper'

class StreetsControllerTest < ActionController::TestCase
  setup do
    @street = streets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create street" do
    assert_difference('Street.count') do
      post :create, street: { accident_id: @street.accident_id, calzadas: @street.calzadas, carriles: @street.carriles, controles: @street.controles, geometria: @street.geometria, superficie: @street.superficie, utilizacion: @street.utilizacion, via: @street.via, visibilidad: @street.visibilidad }
    end

    assert_redirected_to street_path(assigns(:street))
  end

  test "should show street" do
    get :show, id: @street
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @street
    assert_response :success
  end

  test "should update street" do
    patch :update, id: @street, street: { accident_id: @street.accident_id, calzadas: @street.calzadas, carriles: @street.carriles, controles: @street.controles, geometria: @street.geometria, superficie: @street.superficie, utilizacion: @street.utilizacion, via: @street.via, visibilidad: @street.visibilidad }
    assert_redirected_to street_path(assigns(:street))
  end

  test "should destroy street" do
    assert_difference('Street.count', -1) do
      delete :destroy, id: @street
    end

    assert_redirected_to streets_path
  end
end
