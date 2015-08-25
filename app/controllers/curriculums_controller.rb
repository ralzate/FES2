class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @curriculums = Curriculum.all
    @experiencias_laborales = ExperienciaLaboral.where usuario_id: current_user.id
    @estudios_complementarios = EstudiosComplementario.where usuario_id: current_user.id
    @informaciones_academicas = InformacionAcademica.where usuario_id: current_user.id
    @referencias_personales =  ReferenciasPersonale.where usuario_id: current_user.id
  end



  def show
    @experiencias_laborales = ExperienciaLaboral.where usuario_id: current_user.id    
    @estudios_complementarios = EstudiosComplementario.where usuario_id: current_user.id    
    @informaciones_academicas = InformacionAcademica.where usuario_id: current_user.id    
    @referencias_personales = ReferenciasPersonale.where usuario_id: current_user.id    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experiencias_laborales }
      format.pdf do
        pdf = ExperienciaLaboralPdf.new(
        @experiencias_laborales, 
        @estudios_complementarios,
        @informaciones_academicas, 
        @referencias_personales,
        @users,
        view_context)
        send_data pdf.render, filename:
        "Curriculum_#{@curriculums}.pdf",
        type: "application/pdf", :disposition => "inline"
      end
    end
  end




  def new
    @curriculum = Curriculum.new
    respond_with(@curriculum)
  end

  def edit
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)
    @curriculum.save
    respond_with(@curriculum)
  end

  def update
    @curriculum.update(curriculum_params)
    respond_with(@curriculum)
  end

  def destroy
    @curriculum.destroy
    respond_with(@curriculum)
  end

  private
    def set_curriculum
      @curriculum = Curriculum.find(params[:id])
    end

    def curriculum_params
      params.require(:curriculum).permit(:usuario_id)
    end
end
