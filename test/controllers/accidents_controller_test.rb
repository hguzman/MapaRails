require 'test_helper'

class AccidentsControllerTest < ActionController::TestCase
  setup do
    @accident = accidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accident" do
    assert_difference('Accident.count') do
      post :create, accident: { area: @accident.area, choque_con: @accident.choque_con, clase_accidente: @accident.clase_accidente, clima: @accident.clima, direccion: @accident.direccion, diseno: @accident.diseno, fecha_levantamiento_at: @accident.fecha_levantamiento_at, fecha_ocurrencia_at: @accident.fecha_ocurrencia_at, gravedad: @accident.gravedad, informe: @accident.informe, latitud: @accident.latitud, localidad: @accident.localidad, longitud: @accident.longitud, objeto_fijo: @accident.objeto_fijo, sector: @accident.sector, transit_id: @accident.transit_id, transito: @accident.transito, zona: @accident.zona }
    end

    assert_redirected_to accident_path(assigns(:accident))
  end

  test "should show accident" do
    get :show, id: @accident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accident
    assert_response :success
  end

  test "should update accident" do
    patch :update, id: @accident, accident: { area: @accident.area, choque_con: @accident.choque_con, clase_accidente: @accident.clase_accidente, clima: @accident.clima, direccion: @accident.direccion, diseno: @accident.diseno, fecha_levantamiento_at: @accident.fecha_levantamiento_at, fecha_ocurrencia_at: @accident.fecha_ocurrencia_at, gravedad: @accident.gravedad, informe: @accident.informe, latitud: @accident.latitud, localidad: @accident.localidad, longitud: @accident.longitud, objeto_fijo: @accident.objeto_fijo, sector: @accident.sector, transit_id: @accident.transit_id, transito: @accident.transito, zona: @accident.zona }
    assert_redirected_to accident_path(assigns(:accident))
  end

  test "should destroy accident" do
    assert_difference('Accident.count', -1) do
      delete :destroy, id: @accident
    end

    assert_redirected_to accidents_path
  end
end
