require 'test_helper'

class ExperienciasLaboralesControllerTest < ActionController::TestCase
  setup do
    @experiencia_laboral = experiencias_laborales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiencias_laborales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experiencia_laboral" do
    assert_difference('ExperienciaLaboral.count') do
      post :create, experiencia_laboral: { cargo: @experiencia_laboral.cargo, empresa: @experiencia_laboral.empresa, fecha_incio: @experiencia_laboral.fecha_incio, fecha_terminacion: @experiencia_laboral.fecha_terminacion, telefono: @experiencia_laboral.telefono, usuario_id: @experiencia_laboral.usuario_id }
    end

    assert_redirected_to experiencia_laboral_path(assigns(:experiencia_laboral))
  end

  test "should show experiencia_laboral" do
    get :show, id: @experiencia_laboral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiencia_laboral
    assert_response :success
  end

  test "should update experiencia_laboral" do
    patch :update, id: @experiencia_laboral, experiencia_laboral: { cargo: @experiencia_laboral.cargo, empresa: @experiencia_laboral.empresa, fecha_incio: @experiencia_laboral.fecha_incio, fecha_terminacion: @experiencia_laboral.fecha_terminacion, telefono: @experiencia_laboral.telefono, usuario_id: @experiencia_laboral.usuario_id }
    assert_redirected_to experiencia_laboral_path(assigns(:experiencia_laboral))
  end

  test "should destroy experiencia_laboral" do
    assert_difference('ExperienciaLaboral.count', -1) do
      delete :destroy, id: @experiencia_laboral
    end

    assert_redirected_to experiencias_laborales_path
  end
end
