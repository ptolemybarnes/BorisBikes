require_relative 'bike_container'

class DockingStation
attr_reader :name
@@stations_list = []

  include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @name = get_london_name
    
    @@stations_list << self
  end

  def get_london_name
  File.readlines("./lib/london_areas_array.txt").sample.chomp
  end

  def get_station_names
  	@@stations_list.map { |station| station.name }
  end


end
