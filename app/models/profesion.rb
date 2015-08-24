# == Schema Information
#
# Table name: profesiones
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Profesion < ActiveRecord::Base
	
	validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
  	validates_format_of :nombre, :with => /[A-Z]/, :message => "Por Favor ingresa la primera letra en Mayuscula"
	validates_format_of :nombre, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto"
	validates :descripcion, :presence => { :message => "Por Favor ingresa una descripción"}

	def self.search(search)
		where("nombre like '%#{search}%' or descripcion like '%#{search}%'")
	end
end
