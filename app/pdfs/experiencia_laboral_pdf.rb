class ExperienciaLaboralPdf < Prawn::Document
	def initialize(experiencia_laboral, view)
		super()
		@experiencia_laboral = experiencia_laboral
		logo
		@view = view
		experiencia
		header
	end


	def logo
	 	#logopath =  "#{Rails.root}/app/assets/images/logo/rails.png"
	    #image logopath, :width => 50, :height => 64
	    move_down 70
	end

	def header
	    draw_text "Curriculum", :at => [30, 680], size: 22
	    draw_text "Datos Personales", :at => [30, 630], size: 22
	end

 	def experiencia
    	move_down 50
    	draw_text "Empresa: #{@experiencia_laboral.empresa}", :at => [30, 580], size: 12
    	draw_text "Cargo: #{@experiencia_laboral.cargo}", :at => [30, 560], size: 12
    	draw_text "Telefono: #{@experiencia_laboral.telefono}", :at => [30, 540], size: 12
    	draw_text "Fecha Inicio: #{@experiencia_laboral.fecha_inicio}", :at => [30, 520], size: 12
    	draw_text "Fecha Terminacion: #{@experiencia_laboral.fecha_terminacion}", :at => [30, 500], size: 12
  	end 
end