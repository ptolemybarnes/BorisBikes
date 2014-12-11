require_relative 'bike_container'

class DockingStation
attr_reader :name

  include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @name = options.fetch(:name)
  end

end
