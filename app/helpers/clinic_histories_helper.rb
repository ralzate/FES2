module ClinicHistoriesHelper

	def checked(area)
		@clinic_history.alteration.nil? ? false : @clinic_history.alteration.match(area)
	end

	def checked(area)
		@clinic_history.other_signs.nil? ? false : @clinic_history.other_signs.match(area)
	end
	

end
