class ExperienciaLaboralPdf < Prawn::Document
	def initialize(experiencias_laborales, view_context)
	    super()
	    @experiencias_laborales = experiencias_laborales
	    logo_1
	    titulo_2
	    datos_personales_3
	    experiencias_laborales_4
	    estudios_complementarios_5
	    informaciones_academicas_6
	    referencias_personales_7
	    mostrar_tabla_8
	end

	def logo_1
	    # This inserts an image in the pdf file and sets the size of the image
	    image "#{Rails.root}/app/assets/images/logo/rails.png"
	end

	def titulo_2
	    text "Curriculum", size: 25, style: :bold
	end

	def datos_personales_3
		text "Datos Personales", size: 18, style: :bold
	end

	def experiencias_laborales_4
		text "Experiencias Laborales", size: 18, style: :bold
	end

	def estudios_complementarios_5
		text "Estudios Complementarios", size: 18, style: :bold
	end

	def informaciones_academicas_6
		text "Informaciones Academicas", size: 18, style: :bold
	end

	def referencias_personales_7
		text "Referencias Personales", size: 18, style: :bold
	end

	def mostrar_tabla_8
	  	move_down 20
	  	table experiencias_laborales_rows
	    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
	    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
	    # Then I set the table column widths
	    # table experiencias_laborales_rows do
	    #  row(0).font_style = :bold
	    #  self.header = true
	    #  self.row_colors = ['DDDDDD', 'FFFFFF']
	    #  self.column_widths = [40, 300, 200]
	    # end
	end

  	def experiencias_laborales_rows
    	[['#', 'empresa', 'cargo']] +
      		@experiencias_laborales.map do |experiencia_laboral|
      	[experiencia_laboral.id, experiencia_laboral.empresa, experiencia_laboral.cargo]
    end
  end
end