module ClinicHistoryDecorator



  	def select_condition
    	[
	        ['Pasajero', 'Pasajero'],
	        ['Tripulante', 'Tripulante'],
	        ['Empleado', 'Empleado'],
	        ['Visitante', 'Visitante'],
	        ['Otro', 'Otro']

    	]
  	end




  	def select_type_service
    	[
	        ['Atención prehospitalaria', 'Atención prehospitalaria'],
	        ['Valoración aptitud de vuelo', 'Valoración aptitud de vuelo'],
	        ['Enfermedad general', 'Enfermedad general'],
	        ['Evento laboral', 'Evento laboral'],
	        ['Accidente de transito', 'Accidente de transito'],
	        ['Traslado', 'Traslado'],
	        ['Otro tipo de accidente', 'Otro tipo de accidente'],
	        ['Remisión', 'Remisión']
    	]
  	end




end