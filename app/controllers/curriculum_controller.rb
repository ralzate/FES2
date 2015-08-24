class CurriculumController < ApplicationController
  
  def index
    @experiencias_laborales = ExperienciaLaboral.where usuario_id: current_user.id
    @estudios_complementarios = EstudiosComplementario.where usuario_id: current_user.id
    @informaciones_academicas = InformacionAcademica.where usuario_id: current_user.id
    @profesiones = Profesion.where usuario_id: current_user.id
    @referencias_personales =  ReferenciasPersonale.where usuario_id: current_user.id
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end


end
