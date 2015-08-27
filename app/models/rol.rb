# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Rol < ActiveRecord::Base

	validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
	validates :descripcion, :presence => { :message => "Por Favor ingresa una descripción"}

	def self.search(search)
		where("nombre like '%#{search}%' or descripcion like '%#{search}%'")
	end
end
