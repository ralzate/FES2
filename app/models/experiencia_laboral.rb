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
  	validates :cargo, :presence => { :message => "Por Favor ingresa un cargo"}
    validates_numericality_of :telefono, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9999999999999999999999,
    message: "Por favor ingresa un telefono valido"


    validates :fecha_inicio,
      date: { before: Proc.new { :fecha_terminacion }, message: "La Fecha debe ser posterior a la fecha de fecha terminacion " },
    on: :create

	  validates :fecha_terminacion,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create


    def self.search(search)
		where("empresa like '%#{search}%' or cargo like '%#{search}%' 
		or telefono like '%#{search}%'")
	end
end
