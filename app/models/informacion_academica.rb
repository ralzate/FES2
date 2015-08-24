# == Schema Information
#
# Table name: informaciones_academicas
#
#  id                :integer          not null, primary key
#  tipo_de_dato      :string(255)
#  nombre            :string(255)
#  fecha_terminacion :date
#  titulo_obtenido   :string(255)
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class InformacionAcademica < ActiveRecord::Base
  belongs_to :usuario

  	validates :tipo_de_dato, :presence => { :message => "Por Favor ingresa un tipo"}
    validates :nombre, :presence => { :message => "Por Favor ingresa un nombre"}
    validates_format_of :nombre, :with => /\A[a-zA-Z]+\z/,  :message => "Por favor ingresa solo texto"
  	validates :titulo_obtenido, :presence => { :message => "Por Favor ingresa un titulo obtenido"}
  	validates :fecha_terminacion,
  		date: { before: Proc.new { Date.today }, message: "La Fecha debe ser anterior a la fecha actual	" },
  	on: :create

    def self.search(search)
		where("tipo_de_dato like '%#{search}%' or nombre like '%#{search}%' 
		or titulo_obtenido like '%#{search}%'")
	end
end
