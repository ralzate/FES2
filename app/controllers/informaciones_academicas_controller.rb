class InformacionesAcademicasController < ApplicationController
  before_action :set_informacion_academica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @informaciones_academicas = InformacionAcademica.search(params[:search]).page(params[:page]).per_page(5).where user_id: current_user.id    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @informaciones_academicas }
    end
  end

  def show
    @informacion_academica = InformacionAcademica.find(params[:id])
  end

  def new
    @informacion_academica = InformacionAcademica.new
  end

  def edit
    @informacion_academica = InformacionAcademica.find(params[:id])
  end

  def create
    @informacion_academica = InformacionAcademica.new(informacion_academica_params)
    render :action => :new unless @informacion_academica.save
  end

  def update
    @informacion_academica = InformacionAcademica.find(params[:id])
    render :action => :edit unless @informacion_academica.update_attributes(informacion_academica_params)
  end
  

  def destroy
    @informacion_academica = InformacionAcademica.find(params[:id])
    @informacion_academica.destroy
  end

  private
  def set_informacion_academica
    @informacion_academica = InformacionAcademica.find(params[:id])
  end

  def informacion_academica_params
    params.require(:informacion_academica).permit(:tipo_de_dato, :nombre, :fecha_terminacion, :titulo_obtenido, :user_id)
  end
end
