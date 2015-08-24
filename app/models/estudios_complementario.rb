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
  	belongs_to :usuario

  	validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
  	validates_format_of :nombre, :with => /[A-Z]/, :message => "Por Favor ingresa la primera letra en Mayuscula"
	validates_format_of :nombre, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto"

  	validates :entidad, :presence => { :message => "Por Favor ingresa una entidad"}
  	validates_format_of :entidad, :with => /[A-Z]/, :message => "Por Favor ingresa la primera letra en Mayuscula"
	validates_format_of :entidad, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto"

  	validates :intensidad_horaria, :presence => { :message => "Por Favor ingresa una Intensidad Horaria"}

	validates :fecha_terminacion,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create

  	def self.search(search)
		where("nombre like '%#{search}%' or entidad like '%#{search}%'")
	end
end
