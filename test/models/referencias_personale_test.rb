# == Schema Information
#
# Table name: referencias_personales
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  telefono   :string(255)
#  profesion  :string(255)
#  usuario_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ReferenciasPersonaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
