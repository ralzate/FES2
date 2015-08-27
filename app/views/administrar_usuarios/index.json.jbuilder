json.array!(@administrar_usuarios) do |administrar_usuario|
  json.extract! administrar_usuario, :id, :rol_id, :user_id
  json.url administrar_usuario_url(administrar_usuario, format: :json)
end
