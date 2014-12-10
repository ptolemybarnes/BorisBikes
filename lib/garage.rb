require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

  def fix_bikes
  	bikes.each { |bike| bike.fix! }
  	
  end

	

end
