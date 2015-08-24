require 'test_helper'

class EstudiosComplementariosControllerTest < ActionController::TestCase
  setup do
    @estudios_complementario = estudios_complementarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudios_complementarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudios_complementario" do
    assert_difference('EstudiosComplementario.count') do
      post :create, estudios_complementario: { entidad: @estudios_complementario.entidad, fecha_terminacion: @estudios_complementario.fecha_terminacion, intensidad_horaria: @estudios_complementario.intensidad_horaria, nombre: @estudios_complementario.nombre, usuario_id: @estudios_complementario.usuario_id }
    end

    assert_redirected_to estudios_complementario_path(assigns(:estudios_complementario))
  end

  test "should show estudios_complementario" do
    get :show, id: @estudios_complementario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudios_complementario
    assert_response :success
  end

  test "should update estudios_complementario" do
    patch :update, id: @estudios_complementario, estudios_complementario: { entidad: @estudios_complementario.entidad, fecha_terminacion: @estudios_complementario.fecha_terminacion, intensidad_horaria: @estudios_complementario.intensidad_horaria, nombre: @estudios_complementario.nombre, usuario_id: @estudios_complementario.usuario_id }
    assert_redirected_to estudios_complementario_path(assigns(:estudios_complementario))
  end

  test "should destroy estudios_complementario" do
    assert_difference('EstudiosComplementario.count', -1) do
      delete :destroy, id: @estudios_complementario
    end

    assert_redirected_to estudios_complementarios_path
  end
end
