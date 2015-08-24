class EstudiosComplementariosController < ApplicationController
  before_action :set_estudios_complementario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @estudios_complementarios = EstudiosComplementario.search(params[:search]).page(params[:page]).per_page(5).where usuario_id: current_user.id    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estudios_complementarios }
    end
  end

  def show
    estudios_complementario = EstudiosComplementario.find(params[:id])
  end

  def new
    @estudios_complementario = EstudiosComplementario.new
  end

  def edit
    @estudios_complementario = EstudiosComplementario.find(params[:id])
  end

  def create
    @estudios_complementario = EstudiosComplementario.new(estudios_complementario_params)
    render :action => :new unless @estudios_complementario.save
  end

  def update
    @estudios_complementario = EstudiosComplementario.find(params[:id])
    render :action => :edit unless @estudios_complementario.update_attributes(estudios_complementario_params)
  end

  def destroy
      @estudios_complementario = EstudiosComplementario.find(params[:id])
      @estudios_complementario.destroy
  end

  private
    def set_estudios_complementario
      @estudios_complementario = EstudiosComplementario.find(params[:id])
    end

    def estudios_complementario_params
      params.require(:estudios_complementario).permit(:nombre, :entidad, :fecha_terminacion, :intensidad_horaria, :usuario_id)
    end
end
