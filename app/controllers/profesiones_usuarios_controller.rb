class ProfesionesUsuariosController < ApplicationController
  before_action :set_profesiones_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profesiones_usuarios = ProfesionesUsuario.search(params[:search]).page(params[:page]).per_page(5)    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profesiones_usuarios }
    end
  end
  def show
    @profesiones_usuario = ProfesionesUsuario.find(params[:id])
  end

  def new
    @profesiones_usuario = ProfesionesUsuario.new
  end

  def edit
    @profesiones_usuario = ProfesionesUsuario.find(params[:id])
  end

  def create
    @profesiones_usuario = ProfesionesUsuario.new(profesiones_usuario_params)
    render :action => :new unless @profesiones_usuario.save
  end

  def update
    @profesiones_usuario = ProfesionesUsuario.find(params[:id])
    render :action => :edit unless @profesiones_usuario.update_attributes(profesiones_usuario_params)
  end

  def destroy
    @profesiones_usuario = ProfesionesUsuario.find(params[:id])
    @profesiones_usuario.destroy
  end

  private
  def set_profesiones_usuario
    @profesiones_usuario = ProfesionesUsuario.find(params[:id])
  end

  def profesiones_usuario_params
    params.require(:profesiones_usuario).permit(:usuario_id, :profesion_id)
  end
end
