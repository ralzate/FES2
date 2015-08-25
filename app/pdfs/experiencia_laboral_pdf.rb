=begin
	
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
	
=end
class ExperienciaLaboralPdf < Prawn::Document
	def initialize(experiencias_laborales,estudios_complementarios,
		informaciones_academicas,referencias_personales,users ,view_context)
	    super()
	    @experiencias_laborales = experiencias_laborales
   	    @estudios_complementarios = estudios_complementarios
   	    @informaciones_academicas = informaciones_academicas
   	    @referencias_personales = referencias_personales
   	    @users = users
	    logo_1
	    titulo_2
	    datos_personales_3
	   	experiencias_laborales_4
	    estudios_complementarios_5
	    informaciones_academicas_6
	    referencias_personales_7
	    pie_de_pagina
	end

	def logo_1
	    # This inserts an image in the pdf file and sets the size of the image
	    image "#{Rails.root}/app/assets/images/logo/logo.png", :at => [380, 730], :width => 180, :height => 100
 		t = Time.now
 	  	draw_text  formatted = "#{t.strftime("%d-%m-%Y")}", :at => [450, 616], size: 10, style: :bold 
	end

	def titulo_2
	    draw_text "Mi Curriculum", size: 28, style: :bold_italic, :at => [0, 690], position: :relative
	end


	def datos_personales_3
	    draw_text "Datos Personales", size: 28, style: :bold, :at => [0, 650], position: :relative
	end





	def experiencias_laborales_4
	  	move_down 90
	  	text "Mis Experiencias Laborales", size: 25, style: :bold
	  	table(experiencias_laborales_rows, :column_widths => [20, 90, 90, 90, 90, 120], :cell_style => {:background_color => "F2F2F2", position: :absulte}) do
			row(0).font_style = :bold
		end
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30
		end
	end
  	def experiencias_laborales_rows
    	[['#', 'Empresa', 'Cargo', 'Telefono', 'Fecha Inicio', 'Fecha Terminación']] +
      		@experiencias_laborales.map do |experiencia_laboral|
      	[experiencia_laboral.id, experiencia_laboral.empresa, 
      	experiencia_laboral.cargo, experiencia_laboral.telefono,
      	experiencia_laboral.fecha_inicio, experiencia_laboral.fecha_terminacion]
    	end
	end

	def estudios_complementarios_5
	  	move_down 50
	  	text "Estudios Complementarios", size: 25, style: :bold
	  	table(estudios_complementarios_rows, :column_widths => [20, 160, 160, 160], :cell_style => {:background_color => "F2F2F2"}) do
			row(0).font_style = :bold
		end
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30
		end
	end

  	def estudios_complementarios_rows
    	[['#', 'Nombre', 'Entidad', 'Fecha Terminación']] +
      		@estudios_complementarios.map do |estudio_complementario|
      	[estudio_complementario.id, estudio_complementario.nombre, 
      	estudio_complementario.entidad, estudio_complementario.fecha_terminacion]
    	end
	end

	def informaciones_academicas_6
	  	move_down 50
	  	text "Informaciones Academicas", size: 25, style: :bold
	  	table(informaciones_academicas_rows, :column_widths => [20, 120, 120, 120, 120], :cell_style => {:background_color => "F2F2F2"}) do
			row(0).font_style = :bold
		end
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30
		end
	end

  	def informaciones_academicas_rows
      	[['#', 'Tipo', 'Nombre', 'Fecha Terminación', 'Titulo Obtenido']] +
      		@informaciones_academicas.map do |informacion_academica|
      	[informacion_academica.id, informacion_academica.tipo_de_dato, 
      	informacion_academica.nombre, informacion_academica.fecha_terminacion,
      	informacion_academica.titulo_obtenido]
    	end
	end

	def referencias_personales_7
		move_down 50
		text "Referencias Personales", size: 25, style: :bold
	  	table(referencias_personales_rows, :column_widths => [20, 160, 160, 160], :cell_style => {:background_color => "F2F2F2"}) do
			row(0).font_style = :bold
		end
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30
		end
	end

  	def referencias_personales_rows
  		[['#', 'Nombre', 'Telefono', 'Profesion']] +
      		@referencias_personales.map do |referencias_personale|
      	[referencias_personale.id, referencias_personale.nombre, 
      	referencias_personale.telefono, referencias_personale.profesion]
    	end
	end

	def pie_de_pagina	
		draw_text "www.servidual.com", :at => [215, 101], size: 10
		draw_text "servidual@servidual.com", :at => [190, 89], size: 11, :style => :bold
		draw_text "(+574) 4440996", :at => [220, 76], size: 11
		draw_text "________________________________________________", :at => [70, 74], size: 15
		draw_text "Cra 80# 44B-149", :at => [220, 60], size: 10
		draw_text "La America-Medellin", :at => [212, 50], size: 10
	end
end