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

class ReferenciasPersonale < ActiveRecord::Base
	belongs_to :usuario
  	
  	validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
	validates :profesion, :presence => { :message => "Por Favor ingresa una profesion"}
	validates_numericality_of :telefono, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9999999999999999999999,
    message: "Por favor ingresa un telefono valido"

  	def self.search(search)
		where("nombre like '%#{search}%' or telefono like '%#{search}%' 
	    or profesion like '%#{search}%'")
	end
end
