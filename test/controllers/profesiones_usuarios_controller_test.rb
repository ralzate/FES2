require 'test_helper'

class ProfesionesUsuariosControllerTest < ActionController::TestCase
  setup do
    @profesiones_usuario = profesiones_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesiones_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesiones_usuario" do
    assert_difference('ProfesionesUsuario.count') do
      post :create, profesiones_usuario: { profesion_id: @profesiones_usuario.profesion_id, usuario_id: @profesiones_usuario.usuario_id }
    end

    assert_redirected_to profesiones_usuario_path(assigns(:profesiones_usuario))
  end

  test "should show profesiones_usuario" do
    get :show, id: @profesiones_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesiones_usuario
    assert_response :success
  end

  test "should update profesiones_usuario" do
    patch :update, id: @profesiones_usuario, profesiones_usuario: { profesion_id: @profesiones_usuario.profesion_id, usuario_id: @profesiones_usuario.usuario_id }
    assert_redirected_to profesiones_usuario_path(assigns(:profesiones_usuario))
  end

  test "should destroy profesiones_usuario" do
    assert_difference('ProfesionesUsuario.count', -1) do
      delete :destroy, id: @profesiones_usuario
    end

    assert_redirected_to profesiones_usuarios_path
  end
end
