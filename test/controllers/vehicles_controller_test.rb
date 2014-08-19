require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { acompanantes: @vehicle.acompanantes, brand_id: @vehicle.brand_id, carroceria: @vehicle.carroceria, class_vehicle_id: @vehicle.class_vehicle_id, colod_id: @vehicle.colod_id, danos_materiales: @vehicle.danos_materiales, deposito: @vehicle.deposito, empresa: @vehicle.empresa, inmovilizado_en: @vehicle.inmovilizado_en, licencia_transito: @vehicle.licencia_transito, linea: @vehicle.linea, lugar_impacto: @vehicle.lugar_impacto, matriculado_en: @vehicle.matriculado_en, modalidad: @vehicle.modalidad, modelo: @vehicle.modelo, nacionalidad: @vehicle.nacionalidad, nit: @vehicle.nit, pasajeros: @vehicle.pasajeros, placa: @vehicle.placa, radio_accion: @vehicle.radio_accion, registro: @vehicle.registro, revision_numero: @vehicle.revision_numero, revision_sino: @vehicle.revision_sino, toneladas: @vehicle.toneladas }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { acompanantes: @vehicle.acompanantes, brand_id: @vehicle.brand_id, carroceria: @vehicle.carroceria, class_vehicle_id: @vehicle.class_vehicle_id, colod_id: @vehicle.colod_id, danos_materiales: @vehicle.danos_materiales, deposito: @vehicle.deposito, empresa: @vehicle.empresa, inmovilizado_en: @vehicle.inmovilizado_en, licencia_transito: @vehicle.licencia_transito, linea: @vehicle.linea, lugar_impacto: @vehicle.lugar_impacto, matriculado_en: @vehicle.matriculado_en, modalidad: @vehicle.modalidad, modelo: @vehicle.modelo, nacionalidad: @vehicle.nacionalidad, nit: @vehicle.nit, pasajeros: @vehicle.pasajeros, placa: @vehicle.placa, radio_accion: @vehicle.radio_accion, registro: @vehicle.registro, revision_numero: @vehicle.revision_numero, revision_sino: @vehicle.revision_sino, toneladas: @vehicle.toneladas }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
