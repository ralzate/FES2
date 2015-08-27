require 'test_helper'

class AdministrarUsuariosControllerTest < ActionController::TestCase
  setup do
    @administrar_usuario = administrar_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrar_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrar_usuario" do
    assert_difference('AdministrarUsuario.count') do
      post :create, administrar_usuario: { rol_id: @administrar_usuario.rol_id, user_id: @administrar_usuario.user_id }
    end

    assert_redirected_to administrar_usuario_path(assigns(:administrar_usuario))
  end

  test "should show administrar_usuario" do
    get :show, id: @administrar_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrar_usuario
    assert_response :success
  end

  test "should update administrar_usuario" do
    patch :update, id: @administrar_usuario, administrar_usuario: { rol_id: @administrar_usuario.rol_id, user_id: @administrar_usuario.user_id }
    assert_redirected_to administrar_usuario_path(assigns(:administrar_usuario))
  end

  test "should destroy administrar_usuario" do
    assert_difference('AdministrarUsuario.count', -1) do
      delete :destroy, id: @administrar_usuario
    end

    assert_redirected_to administrar_usuarios_path
  end
end
