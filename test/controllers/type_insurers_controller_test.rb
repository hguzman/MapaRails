require 'test_helper'

class TypeInsurersControllerTest < ActionController::TestCase
  setup do
    @type_insurer = type_insurers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_insurers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_insurer" do
    assert_difference('TypeInsurer.count') do
      post :create, type_insurer: { tipo_seguro: @type_insurer.tipo_seguro }
    end

    assert_redirected_to type_insurer_path(assigns(:type_insurer))
  end

  test "should show type_insurer" do
    get :show, id: @type_insurer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_insurer
    assert_response :success
  end

  test "should update type_insurer" do
    patch :update, id: @type_insurer, type_insurer: { tipo_seguro: @type_insurer.tipo_seguro }
    assert_redirected_to type_insurer_path(assigns(:type_insurer))
  end

  test "should destroy type_insurer" do
    assert_difference('TypeInsurer.count', -1) do
      delete :destroy, id: @type_insurer
    end

    assert_redirected_to type_insurers_path
  end
end
