# == Schema Information
#
# Table name: estudios_complementarios
#
#  id                 :integer          not null, primary key
#  nombre             :string(255)
#  entidad            :string(255)
#  fecha_terminacion  :date
#  intensidad_horaria :time
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class EstudiosComplementarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
