class ReferenciasPersonalesController < ApplicationController
  before_action :set_referencias_personale, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @referencias_personales = ReferenciasPersonale.search(params[:search]).page(params[:page]).per_page(5).where usuario_id: current_user.id    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @referencias_personales }
    end
  end

  def show
    @referencias_personale = ReferenciasPersonale.find(params[:id])
  end

  def new
    @referencias_personale = ReferenciasPersonale.new
  end

  def edit
    @referencias_personale = ReferenciasPersonale.find(params[:id])
  end

  def create
    @referencias_personale = ReferenciasPersonale.new(referencias_personale_params)
    render :action => :new unless @referencias_personale.save
  end

  def update
    @referencias_personale = ReferenciasPersonale.find(params[:id])
    render :action => :edit unless @referencias_personale.update_attributes(referencias_personale_params)
  end


  def destroy
    @referencias_personale = ReferenciasPersonale.find(params[:id])
    @referencias_personale.destroy
  end
  
  private
  def set_referencias_personale
    @referencias_personale = ReferenciasPersonale.find(params[:id])
  end

  def referencias_personale_params
    params.require(:referencias_personale).permit(:nombre, :telefono, :profesion, :usuario_id)
  end
end
