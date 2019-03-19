module ServicesHelper

	def services
		Service.order("created_at ASC")
	end
end
