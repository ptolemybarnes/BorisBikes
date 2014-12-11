require_relative 'bike_container'



class DockingStation
attr_reader :name

  include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @name = get_london_name
  end

  def get_london_name
  	File.readlines("./lib/london_areas_array.txt").sample.chomp

  end

end
