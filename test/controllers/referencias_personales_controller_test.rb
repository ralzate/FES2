require 'test_helper'

class ReferenciasPersonalesControllerTest < ActionController::TestCase
  setup do
    @referencias_personale = referencias_personales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencias_personales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencias_personale" do
    assert_difference('ReferenciasPersonale.count') do
      post :create, referencias_personale: { nombre: @referencias_personale.nombre, profesion: @referencias_personale.profesion, telefono: @referencias_personale.telefono, usuario_id: @referencias_personale.usuario_id }
    end

    assert_redirected_to referencias_personale_path(assigns(:referencias_personale))
  end

  test "should show referencias_personale" do
    get :show, id: @referencias_personale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencias_personale
    assert_response :success
  end

  test "should update referencias_personale" do
    patch :update, id: @referencias_personale, referencias_personale: { nombre: @referencias_personale.nombre, profesion: @referencias_personale.profesion, telefono: @referencias_personale.telefono, usuario_id: @referencias_personale.usuario_id }
    assert_redirected_to referencias_personale_path(assigns(:referencias_personale))
  end

  test "should destroy referencias_personale" do
    assert_difference('ReferenciasPersonale.count', -1) do
      delete :destroy, id: @referencias_personale
    end

    assert_redirected_to referencias_personales_path
  end
end
