require 'test_helper'

class DriversControllerTest < ActionController::TestCase
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post :create, driver: { casco: @driver.casco, categoria: @driver.categoria, chaleco: @driver.chaleco, cinturon: @driver.cinturon, ciudad: @driver.ciudad, cod_transito: @driver.cod_transito, direccion: @driver.direccion, expven: @driver.expven, fecha_expven_at: @driver.fecha_expven_at, gravedad: @driver.gravedad, hospital: @driver.hospital, lesiones: @driver.lesiones, num_licencia: @driver.num_licencia, porta_licencia: @driver.porta_licencia, restriccion: @driver.restriccion, telefono: @driver.telefono }
    end

    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should show driver" do
    get :show, id: @driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver
    assert_response :success
  end

  test "should update driver" do
    patch :update, id: @driver, driver: { casco: @driver.casco, categoria: @driver.categoria, chaleco: @driver.chaleco, cinturon: @driver.cinturon, ciudad: @driver.ciudad, cod_transito: @driver.cod_transito, direccion: @driver.direccion, expven: @driver.expven, fecha_expven_at: @driver.fecha_expven_at, gravedad: @driver.gravedad, hospital: @driver.hospital, lesiones: @driver.lesiones, num_licencia: @driver.num_licencia, porta_licencia: @driver.porta_licencia, restriccion: @driver.restriccion, telefono: @driver.telefono }
    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete :destroy, id: @driver
    end

    assert_redirected_to drivers_path
  end
end
