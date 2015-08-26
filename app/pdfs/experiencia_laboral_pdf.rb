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
	    datos_usuario_4
	   	experiencias_laborales_5
	    estudios_complementarios_6
	    informaciones_academicas_7
	    referencias_personales_8
	    pie_de_pagina
	end

	def logo_1
	    # This inserts an image in the pdf file and sets the size of the image
	    image "#{Rails.root}/app/assets/images/logo/logo.png", :at => [400, 730], :width => 150, :height => 90
 		t = Time.now
 	  	draw_text  formatted = "#{t.strftime("%d-%m-%Y")}", :at => [450, 616], size: 10, style: :bold 
	end

	def titulo_2
		move_down 20
	    text "Mi Curriculum", size: 28, style: :bold_italic
	end


	def datos_personales_3
		move_down 20
	    text "Datos Personales", size: 28, style: :bold
	end

	def datos_usuario_4
	  	move_down 20
	  	#text "Mis Experiencias Laborales", size: 25, style: :bold
	  	table(users_rows, :column_widths => [125, 125, 125, 125], :cell_style => {:background_color => "F2F2F2", position: :absulte}) do
			row(0).font_style = :bold
		end
		table(users_rows2, :column_widths => [125, 125, 125, 125], :cell_style => {:background_color => "F2F2F2", position: :absulte}) do
			row(0).font_style = :bold
		end
		table(perfil_rows, :column_widths => [170, 100, 230], :cell_style => {:background_color => "F2F2F2", position: :absulte}) do
			row(0).font_style = :bold
		end
		canvas do
			fill_circle [bounds.left, bounds.top], 30
			fill_circle [bounds.right, bounds.top], 30
			fill_circle [bounds.right, bounds.bottom], 30
			fill_circle [0, 0], 30
		end
	end

  	def users_rows
    	[['Nombres', 'Apellidos', 'Cedula', 'Direccion']] +
      		@users.map do |user|
      	[user.nombre1.capitalize + ' ' + user.nombre2.capitalize, 
      	user.apellido1.capitalize + ' ' + user.apellido2.capitalize,
      		user.cedula,  user.direccion]
    	end
	end

	def users_rows2
    	[['Profesion', 'Fecha Nacimiento', 'Celular', 'Telefono']] +
      		@users.map do |user|
      	[user.profesion, user.fecha_nacimiento, user.celular, user.telefono]
    	end
	end

	def perfil_rows
		[['Email', 'Estado Civil', 'Perfil']] +
			@users.map do |user|
		[user.email, user.estado_civil, user.perfil]
		end
	end

	def experiencias_laborales_5
	  	move_down 50
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

	def estudios_complementarios_6
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

	def informaciones_academicas_7
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

	def referencias_personales_8
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
		move_down 480
		text "www.servidual.com", size: 10, :align => :center, :style => :bold
		text "servidual@servidual.com", size: 11, :style => :bold, :align => :center
		text "(+574) 4440996", size: 11, :align => :center
		text "________________________________________________", size: 15, :align => :center
		text "Cra 80# 44B-149", size: 10, :align => :center
		text "La America-Medellin",  size: 10, :align => :center
	end
end