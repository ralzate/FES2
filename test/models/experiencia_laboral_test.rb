# == Schema Information
#
# Table name: experiencias_laborales
#
#  id                :integer          not null, primary key
#  empresa           :string(255)
#  cargo             :string(255)
#  telefono          :string(255)
#  fecha_inicio      :date
#  fecha_terminacion :date
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ExperienciaLaboralTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
