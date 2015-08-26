# == Schema Information
#
# Table name: estudios_complementarios
#
#  id                 :integer          not null, primary key
#  nombre             :string(255)
#  entidad            :string(255)
#  fecha_terminacion  :date
#  intensidad_horaria :time
#  usuario_id         :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class EstudiosComplementario < ActiveRecord::Base
    has_and_belongs_to_many :users

  	validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
  	validates :entidad, :presence => { :message => "Por Favor ingresa una entidad"}
  	validates :intensidad_horaria, :presence => { :message => "Por Favor ingresa una Intensidad Horaria"}
	  validates :fecha_terminacion,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create
    
  	def self.search(search)
		where("nombre like '%#{search}%' or entidad like '%#{search}%'")
	end
end
