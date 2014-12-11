require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def inquire(location)
		bike_inventory = {
			total_count: location.bike_count,
			broken_count: location.broken_bikes,
			working_count: location.available_bikes.count
		}
	end

  def collect(bike_type,quantity,location)
    quantity.times do
      self.dock(location.release(bike_type)) 
    end
  end

  def drop_off(bike_type,quantity,location)
    quantity.times do
      released_bike = release(bike_type)
      location.dock(released_bike)
    end
  end

end
