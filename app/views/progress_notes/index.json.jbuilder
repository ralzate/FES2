json.array!(@progress_notes) do |progress_note|
  json.extract! progress_note, :id, :patient_name, :patient_document, :type_document, :age, :medical_record, :description, :clinic_history_id
  json.url progress_note_url(progress_note, format: :json)
end
