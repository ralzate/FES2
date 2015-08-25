json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :usuario_id
  json.url curriculum_url(curriculum, format: :json)
end
