# == Schema Information
#
# Table name: experiencias_laborales
#
#  id                :integer          not null, primary key
#  empresa           :string(255)
#  cargo             :string(255)
#  telefono          :string(255)
#  fecha_inicio       :date
#  fecha_terminacion :date
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class ExperienciaLaboral < ActiveRecord::Base
  	belongs_to :usuario

  	validates :empresa, :presence => { :message => "Por Favor ingresa una empresa"}
  	validates_format_of :empresa, :with => /[A-Z]/, :message => "Por Favor ingresa la primera letra en Mayuscula"
  	validates :cargo, :presence => { :message => "Por Favor ingresa un cargo"}
  	validates :telefono, :presence => { :message => "Por Favor ingresa un telefono"}
  	validates_length_of :telefono, :in => 6..20 , :message => "Por Favor ingresa un telefono valido"
	  validates :fecha_inicio,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create
  	validates :fecha_terminacion,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create

    def self.search(search)
		where("empresa like '%#{search}%' or cargo like '%#{search}%' 
		or telefono like '%#{search}%'")
	end
end
