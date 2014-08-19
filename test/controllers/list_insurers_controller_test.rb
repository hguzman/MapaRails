require 'test_helper'

class ListInsurersControllerTest < ActionController::TestCase
  setup do
    @list_insurer = list_insurers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_insurers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_insurer" do
    assert_difference('ListInsurer.count') do
      post :create, list_insurer: { insurer_id: @list_insurer.insurer_id, poliza: @list_insurer.poliza, type_insurer_id: @list_insurer.type_insurer_id, vencimiento: @list_insurer.vencimiento }
    end

    assert_redirected_to list_insurer_path(assigns(:list_insurer))
  end

  test "should show list_insurer" do
    get :show, id: @list_insurer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_insurer
    assert_response :success
  end

  test "should update list_insurer" do
    patch :update, id: @list_insurer, list_insurer: { insurer_id: @list_insurer.insurer_id, poliza: @list_insurer.poliza, type_insurer_id: @list_insurer.type_insurer_id, vencimiento: @list_insurer.vencimiento }
    assert_redirected_to list_insurer_path(assigns(:list_insurer))
  end

  test "should destroy list_insurer" do
    assert_difference('ListInsurer.count', -1) do
      delete :destroy, id: @list_insurer
    end

    assert_redirected_to list_insurers_path
  end
end
