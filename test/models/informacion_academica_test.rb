# == Schema Information
#
# Table name: informaciones_academicas
#
#  id                :integer          not null, primary key
#  tipo_de_dato      :string(255)
#  nombre            :string(255)
#  fecha_terminacion :date
#  titulo_obtenido   :string(255)
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class InformacionAcademicaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
