# == Schema Information
#
# Table name: profesiones_usuarios
#
#  id           :integer          not null, primary key
#  usuario_id   :integer
#  profesion_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class ProfesionesUsuario < ActiveRecord::Base
  	belongs_to :user
  	belongs_to :profesion
  	
   	validates :user_id, :presence => { :message => "Por Favor Selecciona un usuario"}
  	validates :profesion_id, :presence => { :message => "Por Favor Selecciona una profesion"}

    def self.search(search)
		where("")
	end
end
