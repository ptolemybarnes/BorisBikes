require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

  def fix_bikes
<<<<<<< HEAD
  	bikes.each { |bike| bike.fix! }
=======
    bikes.each { |bike| bike.fix! }
>>>>>>> 78207697a1bb4f9c68efc123c04d4e9968499889
  end

	

end
