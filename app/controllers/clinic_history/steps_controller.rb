class ClinicHistory::StepsController < ApplicationController
  include Wicked::Wizard
  steps *ClinicHistory.form_steps

  def show
    @clinic_history = ClinicHistory.find(params[:clinic_history_id])
    @patient = Patient.find(params[:patient_id])
    render_wizard
  end

  def update
    @clinic_history = ClinicHistory.find(params[:clinic_history_id])
    @clinic_history.update(clinic_history_params(step))
    render_wizard @clinic_history
  end

  private

  def clinic_history_params(step)
    permitted_attributes = case step
       when "a_clinic_history"
          [:first_name, :second_name, :first_surname, :second_surname, 
          :email, :type_document, :label_document, :document, :days_age, :months_age, :years_age, :birthdate, :gender, :profession, 
          :blood_type, :nacionality, :eps_id, :arl_id, :address, :condition, :accompanist_name, :relationship, 
          :phone, :city_id, :user_id, :user_id, :cove, :mobiel_service, :airport_id, :type_service, 
          :patient_id, :origin, :destination, :company, :accompanist_name, :relationship, :phone, :reason_for_consultation, 
          :current_illness]

       when "b_antecedentes"

         [:neunatales_true , :neunatales_false, :neunatales_description, :patologicos_true, :patologicos_false, 
          :patologicos_description, :quirurgicos_true, :quirurgicos_false, :quirurgicos_description, 
          :farmacologicos_true, :farmacologicos_false, :farmacologicos_description,  :alergicos_true, 
          :alergicos_false, :alergicos_description, :toxicos_true, :toxicos_false, :toxicos_description, 
          :traumaticos_true, :traumaticos_false, :traumaticos_description, :hospitables_true, :hospitables_false, 
          :hospitables_description, :atep_laboral_true, :atep_laboral_false, :atep_laboral_description, :familiar_true , 
          :familiar_false,  :familiar_description, :inmunologicos_true, :inmunologicos_false, :inmunologios_description, 
          :asociado_viajes_de_vuelo_true, :asociado_viajes_de_vuelo_false,  :asociado_viajes_de_vuelo_description, 
          :menstrual_cycle, :gestational_age, :eco, :fum, :pregnancy_true, :pregnancy_false,  :city, :department, 
          :g, :p, :c, :a, :m, :v, :e]

       when "c_revision_sistemas"
         [:cardiovascular_true, :cardiovascular_false, :cardiovascular_description, 
          :respiratory_true , :respiratory_false, :respiratory_description, :abdominal_true,  :abdominal_false,
          :abdominal_description, :genito_urinario_true, :genito_urinario_false, :genito_urinario_description, 
          :neurological_true, :neurological_false, :neurological_description, :mental_true,  :mental_false, 
          :mental_description, :sense_organ_true, :sense_organ_false, :sense_organ_description, 
          :skeletal_muscle_true, :skeletal_muscle_false, :skeletal_muscle_description, :skin_and_appendages_true, 
          :skin_and_appendages_false, :skin_and_appendages_description]
       when "d_examen_fisico"

          [:ta_mmgh, :heart_rate, :breathing_frequency, :sat_of_o_ambiente, 
          :sat_of_o_supplementary, :temperature, :weight_in_kilograms, :height_in_centimeters, 
          :head_true, :head_false, :head_description, :sense_organ_true, :sense_organ_false, :sense_organ_description, 
          :neck_true, :neck_false, :neck_description, :rib_cage_true, :rib_cage_false, 
          :rib_cage_description, :heart_true, :heart_false, :heart_description, :lungs_true, :lungs_false, 
          :lungs_description, :abdomen_true , :abdomen_false, :abdomen_description, :genitourinary_true, 
          :genitourinary_false, :genitourinary_description, :rectum_true, :rectum_false, :rectum_description, 
          :extremities_true, :extremities_false, :extremities_description, :skin_and_appendages_true, 
          :skin_and_appendages_false, :skin_and_appendages_description, :skeletal_muscle_true, :skeletal_muscle_false, 
          :skeletal_muscle_description, :mental_true, :mental_false, :mental_description, :neurological_true,
          :neurological_false, :neurological_description,  :eye_opening, :verbal_answer, 
          :motor_response, :other_signs, :escala_de_glasgow, :piel_y_faneras2_true, :piel_y_faneras2_false,
          :piel_y_faneras2_descripcion, alteration:[], other_signs:[]] 

       when "e_impresion_diagnostica"
          [:analysis, :print_diagnosed, :plan_and_treatment, :observations_recommendations]

       end

    params.require(:clinic_history).permit(permitted_attributes).merge(form_step: step)
  end

end

