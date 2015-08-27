class AdministrarUsuariosController < ApplicationController
  before_action :set_administrar_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @administrar_usuarios = AdministrarUsuario.all
    respond_with(@administrar_usuarios)
  end

  def show
    respond_with(@administrar_usuario)
  end

  def new
    @administrar_usuario = AdministrarUsuario.new
    respond_with(@administrar_usuario)
  end

  def edit
  end

  def create
    @administrar_usuario = AdministrarUsuario.new(administrar_usuario_params)
    @administrar_usuario.save
    respond_with(@administrar_usuario)
  end

  def update
    @administrar_usuario.update(administrar_usuario_params)
    respond_with(@administrar_usuario)
  end

  def destroy
    @administrar_usuario.destroy
    respond_with(@administrar_usuario)
  end

  private
    def set_administrar_usuario
      @administrar_usuario = AdministrarUsuario.find(params[:id])
    end

    def administrar_usuario_params
      params.require(:administrar_usuario).permit(:rol_id, :user_id)
    end
end
