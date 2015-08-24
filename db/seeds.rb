User.create!([
  {nombre1: "xxxx", email: "alejoalzate12@gmail.com", encrypted_password: "$2a$10$E1f78mfzgoDWimTImOeMp.2ugURbYTGmBvjbW87pL35o9pPsfr852", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-08-20 16:12:42", last_sign_in_at: "2015-08-20 16:10:33", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {nombre1: "alejandro", email: "alejomv10@gmail.com", encrypted_password: "$2a$10$1xzCsFBi/9akf7L8m3Tt9.T82ZaLma4V/5WKcJsdP/rJWmh9.sPKW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-08-20 16:20:17", last_sign_in_at: "2015-08-20 16:20:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
EstudiosComplementario.create!([
  {nombre: "asdasd", entidad: "asdasd", fecha_terminacion: "2015-08-20", intensidad_horaria: "2000-01-01 15:03:00", usuario_id: 222}
])
ExperienciaLaboral.create!([
  {empresa: "asdhajsdgah", cargo: "asdbajdba", telefono: "sahdbahsdb", fecha_incio: "2015-08-20", fecha_terminacion: "2015-08-20", usuario_id: 11}
])
InformacionAcademica.create!([
  {tipo_de_dato: "dasdas", nombre: nil, fecha_terminacion: "2015-08-20", titulo_obtenido: "55", usuario_id: 1}
])
Profesion.create!([
  {nombre: "adasdas", descripcion: "dasdas"}
])
ProfesionesUsuario.create!([
  {usuario_id: 22, profesion_id: 22}
])
ReferenciasPersonale.create!([
  {nombre: "asd", telefono: "asdasd", profesion: "asdas", usuario_id: 22}
])
