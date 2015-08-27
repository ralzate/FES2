# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  nombre1                :string(255)      default(""), not null
#  nombre2                :string(255)      default(""), not null
#  apellido1              :string(255)      default(""), not null
#  apellido2              :string(255)      default(""), not null
#  cedula                 :string(255)      default(""), not null
#  genero                 :integer          default(0), not null
#  profesion_id           :integer          default(0), not null
#  profesion              :string(255)      default(""), not null
#  tarjeta_profesional    :string(255)      default(""), not null
#  estado_civil           :string(255)      default(""), not null
#  direccion              :string(255)      default(""), not null
#  fecha_nacimiento       :date
#  celular                :string(255)      default(""), not null
#  telefono               :string(255)      default(""), not null
#  perfil                 :text             default(""), not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
