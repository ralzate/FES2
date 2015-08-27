class RolesController < ApplicationController
  #before_action :set_profesion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @roles = Rol.search(params[:search]).page(params[:page]).per_page(5)   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roles }
    end
  end
  
  def show
    @rol = Rol.find(params[:id])
  end

  def new
    @rol = Rol.new
  end

  def edit
    @rol = Rol.find(params[:id])
  end

  def create
    @rol = Rol.new(rol_params)
    render :action => :new unless @rol.save
  end

  def update
    @rol = Rol.find(params[:id])
    render :action => :edit unless @rol.update_attributes(rol_params)
  end

  def destroy
    @rol = Rol.find(params[:id])
    @rol.destroy
  end
  
  private
  def set_profesion
    @rol = Rol.find(params[:id])
  end

  def rol_params
    params.require(:rol).permit(:nombre, :descripcion)
  end
end