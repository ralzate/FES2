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
  	validates_format_of :nombre, :with => /[A-Z]/, :message => "Por Favor ingresa la primera letra en Mayuscula"
	validates_format_of :nombre, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto"
	
	validates :profesion, :presence => { :message => "Por Favor ingresa una profesion"}
	
	validates :telefono, :presence => { :message => "Por Favor ingresa un telefono"}
	validates_length_of :telefono, :in => 6..20 , :message => "Por Favor ingresa un telefono valido"

  	def self.search(search)
		where("nombre like '%#{search}%' or telefono like '%#{search}%' 
	    or profesion like '%#{search}%'")
	end
end
