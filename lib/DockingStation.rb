require_relative 'bike_container'

class DockingStation
attr_reader :name
STATIONS_LIST = []

  include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @name = get_london_name
    
    STATIONS_LIST << self
  end

  def get_london_name
  File.readlines("./lib/london_areas_array.txt").sample.chomp
  end

  def get_station_names
  	STATIONS_LIST.map { |station| station.name }
  end


end
