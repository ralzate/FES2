require 'test_helper'

class InformacionAcademicaControllerTest < ActionController::TestCase
  setup do
    @informacion_academica = informacion_academica(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacion_academica)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacion_academica" do
    assert_difference('InformacionAcademica.count') do
      post :create, informacion_academica: { fecha_terminacion: @informacion_academica.fecha_terminacion, nombre: @informacion_academica.nombre, tipo_de_dato: @informacion_academica.tipo_de_dato, titulo_obtenido: @informacion_academica.titulo_obtenido, usuario_id: @informacion_academica.usuario_id }
    end

    assert_redirected_to informacion_academica_path(assigns(:informacion_academica))
  end

  test "should show informacion_academica" do
    get :show, id: @informacion_academica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacion_academica
    assert_response :success
  end

  test "should update informacion_academica" do
    patch :update, id: @informacion_academica, informacion_academica: { fecha_terminacion: @informacion_academica.fecha_terminacion, nombre: @informacion_academica.nombre, tipo_de_dato: @informacion_academica.tipo_de_dato, titulo_obtenido: @informacion_academica.titulo_obtenido, usuario_id: @informacion_academica.usuario_id }
    assert_redirected_to informacion_academica_path(assigns(:informacion_academica))
  end

  test "should destroy informacion_academica" do
    assert_difference('InformacionAcademica.count', -1) do
      delete :destroy, id: @informacion_academica
    end

    assert_redirected_to informacion_academica_index_path
  end
end
