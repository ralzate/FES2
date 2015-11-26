class AdministrarUsuariosController < ApplicationController
  before_action :set_administrar_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @administrar_usuarios = AdministrarUsuario.all   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @administrar_usuarios }
    end
  end
  
  def show
    @administrar_usuario = AdministrarUsuario.find(params[:id])
  end

  def new
    @administrar_usuario = AdministrarUsuario.new
  end

  def edit
    @administrar_usuario = AdministrarUsuario.find(params[:id])
  end

  def create
    @administrar_usuario = AdministrarUsuario.new(administrar_usuario_params)
    render :action => :new unless @administrar_usuario.save

        @rol = Rol.new(rol_params)
    render :action => :new unless @rol.save
  end

  def update
    @administrar_usuario = AdministrarUsuario.find(params[:id])
    render :action => :edit unless @administrar_usuario.update_attributes(administrar_usuario_params)
  end

  def destroy
    @administrar_usuario = AdministrarUsuario.find(params[:id])
    @administrar_usuario.destroy
  end
  

  private
    def set_administrar_usuario
      @administrar_usuario = AdministrarUsuario.find(params[:id])
    end

    def administrar_usuario_params
      params.require(:administrar_usuario).permit(:rol_id, :user_id)
    end
end
