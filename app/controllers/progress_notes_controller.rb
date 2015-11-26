class ProgressNotesController < ApplicationController
  # before_action :set_progress_note, only: [:show, :edit, :update, :destroy]
  before_filter :set_progress_note

  # GET /progress_notes
  # GET /progress_notes.json
  def index
    @progress_notes =  ProgressNote.search(params[:search]).page(params[:page]).per_page(2)
  end

  # GET /progress_notes/1
  # GET /progress_notes/1.json
  def show
  end

  # GET /progress_notes/new
  def new
    @progress_note = ProgressNote.new
  end

  # GET /progress_notes/1/edit
  def edit
  end

  # POST /progress_notes
  # POST /progress_notes.json
  def create
    @progress_note = ProgressNote.new(progress_note_params)
   
    @progress_note.clinic_history_id = @clinic_history.id

    respond_to do |format|
      if @progress_note.save
        format.html { redirect_to patient_clinic_history_progress_note_path(@patient, @clinic_history, @progress_note), notice: 'Historia Clinica was successfully created.' }

        format.json { render :show, status: :created, location: @progress_note }
      else
        format.html { render :new }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /progress_notes/1
  # PATCH/PUT /progress_notes/1.json
  def update
    respond_to do |format|
      if @progress_note.update(progress_note_params)
        format.html { redirect_to @progress_note, notice: 'Progress note was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_note }
      else
        format.html { render :edit }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_notes/1
  # DELETE /progress_notes/1.json
  def destroy
    @progress_note.destroy
    respond_to do |format|
      format.html { redirect_to progress_notes_url, notice: 'Progress note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_note
      @clinic_history = ClinicHistory.find(params[:clinic_history_id])
      @patient = Patient.find(params[:patient_id])
      @progress_note = ProgressNote.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_note_params
      params.require(:progress_note).permit(:patient_name, :patient_document, :type_document, :age, :medical_record, :description, :clinic_history_id)
    end
end
