# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151113135559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrar_usuarios", force: true do |t|
    t.integer  "rol_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administrar_usuarios", ["rol_id"], name: "index_administrar_usuarios_on_rol_id", using: :btree
  add_index "administrar_usuarios", ["user_id"], name: "index_administrar_usuarios_on_user_id", using: :btree

  create_table "airports", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "airports", ["city_id"], name: "index_airports_on_city_id", using: :btree

  create_table "arles", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "country_code"
  end

  create_table "clinic_histories", force: true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.string   "type_document"
    t.string   "document"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "profession"
    t.string   "blood_type"
    t.string   "country_code"
    t.string   "nacionality"
    t.integer  "eps_id"
    t.integer  "arl_id"
    t.string   "address"
    t.string   "condition"
    t.string   "accompanist_name"
    t.string   "relationship"
    t.string   "phone"
    t.integer  "user_id"
    t.string   "city"
    t.integer  "city_id"
    t.string   "department"
    t.string   "cove"
    t.string   "mobiel_service"
    t.integer  "airport_id"
    t.string   "type_service"
    t.integer  "patient_id"
    t.string   "origin"
    t.string   "destination"
    t.string   "company"
    t.text     "reason_for_consultation"
    t.text     "current_illness"
    t.boolean  "neunatales_true"
    t.boolean  "neunatales_false"
    t.text     "neunatales_description"
    t.boolean  "patologicos_true"
    t.boolean  "patologicos_false"
    t.text     "patologicos_description"
    t.boolean  "quirurgicos_true"
    t.boolean  "quirurgicos_false"
    t.text     "quirurgicos_description"
    t.boolean  "farmacologicos_true"
    t.boolean  "farmacologicos_false"
    t.text     "farmacologicos_description"
    t.boolean  "alergicos_true"
    t.boolean  "alergicos_false"
    t.text     "alergicos_description"
    t.boolean  "toxicos_true"
    t.boolean  "toxicos_false"
    t.text     "toxicos_description"
    t.boolean  "traumaticos_true"
    t.boolean  "traumaticos_false"
    t.text     "traumaticos_description"
    t.boolean  "hospitables_true"
    t.boolean  "hospitables_false"
    t.text     "hospitables_description"
    t.boolean  "atep_laboral_true"
    t.boolean  "atep_laboral_false"
    t.text     "atep_laboral_description"
    t.boolean  "familiar_true"
    t.boolean  "familiar_false"
    t.text     "familiar_description"
    t.boolean  "inmunologicos_true"
    t.boolean  "inmunologicos_false"
    t.text     "inmunologios_description"
    t.boolean  "asociado_viajes_de_vuelo_true"
    t.boolean  "asociado_viajes_de_vuelo_false"
    t.text     "asociado_viajes_de_vuelo_description"
    t.integer  "menstrual_cycle"
    t.string   "gestational_age"
    t.string   "eco"
    t.integer  "fum"
    t.boolean  "pregnancy_true"
    t.boolean  "pregnancy_false"
    t.string   "g"
    t.string   "p"
    t.string   "c"
    t.string   "a"
    t.string   "m"
    t.string   "v"
    t.string   "e"
    t.boolean  "cardiovascular_true"
    t.boolean  "cardiovascular_false"
    t.text     "cardiovascular_description"
    t.boolean  "respiratory_true"
    t.boolean  "respiratory_false"
    t.text     "respiratory_description"
    t.boolean  "abdominal_true"
    t.boolean  "abdominal_false"
    t.text     "abdominal_description"
    t.boolean  "genito_urinario_true"
    t.boolean  "genito_urinario_false"
    t.text     "genito_urinario_description"
    t.boolean  "neurological_true"
    t.boolean  "neurological_false"
    t.text     "neurological_description"
    t.boolean  "mental_true"
    t.boolean  "mental_false"
    t.text     "mental_description"
    t.boolean  "sense_organ_true"
    t.boolean  "sense_organ_false"
    t.string   "sense_organ_description"
    t.boolean  "skeletal_muscle_true"
    t.boolean  "skeletal_muscle_false"
    t.text     "skeletal_muscle_description"
    t.string   "ta_mmgh"
    t.string   "heart_rate"
    t.string   "breathing_frequency"
    t.string   "sat_of_o_ambiente"
    t.string   "sat_of_o_supplementary"
    t.string   "temperature"
    t.string   "weight_in_kilograms"
    t.string   "height_in_centimeters"
    t.boolean  "head_true"
    t.boolean  "head_false"
    t.text     "head_description"
    t.boolean  "neck_true"
    t.boolean  "neck_false"
    t.text     "neck_description"
    t.boolean  "rib_cage_true"
    t.boolean  "rib_cage_false"
    t.text     "rib_cage_description"
    t.boolean  "heart_true"
    t.boolean  "heart_false"
    t.text     "heart_description"
    t.boolean  "lungs_true"
    t.boolean  "lungs_false"
    t.text     "lungs_description"
    t.boolean  "abdomen_true"
    t.boolean  "abdomen_false"
    t.text     "abdomen_description"
    t.boolean  "genitourinary_true"
    t.boolean  "genitourinary_false"
    t.text     "genitourinary_description"
    t.boolean  "rectum_true"
    t.boolean  "rectum_false"
    t.text     "rectum_description"
    t.boolean  "extremities_true"
    t.boolean  "extremities_false"
    t.text     "extremities_description"
    t.boolean  "skin_and_appendages_true"
    t.boolean  "skin_and_appendages_false"
    t.text     "skin_and_appendages_description"
    t.boolean  "piel_y_faneras2_true"
    t.boolean  "piel_y_faneras2_false"
    t.text     "piel_y_faneras2_descripcion"
    t.string   "alteration"
    t.integer  "eye_opening"
    t.integer  "verbal_answer"
    t.integer  "motor_response"
    t.string   "other_signs"
    t.integer  "escala_de_glasgow"
    t.text     "analysis"
    t.text     "print_diagnosed"
    t.text     "plan_and_treatment"
    t.text     "observations_recommendations"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "clinic_histories", ["airport_id"], name: "index_clinic_histories_on_airport_id", using: :btree
  add_index "clinic_histories", ["arl_id"], name: "index_clinic_histories_on_arl_id", using: :btree
  add_index "clinic_histories", ["eps_id"], name: "index_clinic_histories_on_eps_id", using: :btree
  add_index "clinic_histories", ["patient_id"], name: "index_clinic_histories_on_patient_id", using: :btree
  add_index "clinic_histories", ["user_id"], name: "index_clinic_histories_on_user_id", using: :btree

  create_table "curriculums", force: true do |t|
    t.string   "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epses", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudios_complementarios", force: true do |t|
    t.string   "nombre"
    t.string   "entidad"
    t.date     "fecha_terminacion"
    t.time     "intensidad_horaria"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudios_complementarios", ["user_id"], name: "index_estudios_complementarios_on_user_id", using: :btree

  create_table "experiencias_laborales", force: true do |t|
    t.string   "empresa"
    t.string   "cargo"
    t.string   "telefono"
    t.date     "fecha_inicio"
    t.date     "fecha_terminacion"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiencias_laborales", ["user_id"], name: "index_experiencias_laborales_on_user_id", using: :btree

  create_table "informaciones_academicas", force: true do |t|
    t.string   "tipo_de_dato"
    t.string   "nombre"
    t.date     "fecha_terminacion"
    t.string   "titulo_obtenido"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "informaciones_academicas", ["user_id"], name: "index_informaciones_academicas_on_user_id", using: :btree

  create_table "patients", force: true do |t|
    t.integer  "city_id"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.string   "type_document"
    t.string   "document"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "profession"
    t.string   "blood_type"
    t.string   "nacionality"
    t.string   "address"
    t.string   "condition"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "country_code"
  end

  add_index "patients", ["city_id"], name: "index_patients_on_city_id", using: :btree
  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesiones", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "progress_notes", force: true do |t|
    t.string   "patient_name"
    t.string   "patient_document"
    t.string   "type_document"
    t.integer  "age"
    t.string   "medical_record"
    t.text     "description"
    t.integer  "clinic_history_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "progress_notes", ["clinic_history_id"], name: "index_progress_notes_on_clinic_history_id", using: :btree

  create_table "referencias_personales", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "profesion"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referencias_personales", ["user_id"], name: "index_referencias_personales_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre1",                default: "", null: false
    t.string   "nombre2",                default: "", null: false
    t.string   "apellido1",              default: "", null: false
    t.string   "apellido2",              default: "", null: false
    t.string   "cedula",                 default: "", null: false
    t.integer  "genero",                 default: 0,  null: false
    t.integer  "profesion_id",           default: 0,  null: false
    t.integer  "rol_id"
    t.string   "profesion",              default: "", null: false
    t.string   "tarjeta_profesional",    default: "", null: false
    t.string   "estado_civil",           default: "", null: false
    t.string   "direccion",              default: "", null: false
    t.date     "fecha_nacimiento"
    t.string   "celular",                default: "", null: false
    t.string   "telefono",               default: "", null: false
    t.text     "perfil",                 default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["profesion_id"], name: "index_users_on_profesion_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
