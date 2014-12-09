require_relative 'bike_container'

class van

	include bike_container

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end


end
