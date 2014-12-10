module BikeContainer

DEFAULT_CAPACITY = 20

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "Holder is full" if full?
    bikes << bike
  end

  def release(bike)
    raise 'cannot release bike, holder is empty' if empty?
    bikes.delete(bike)
  end

  def empty?
    bike_count <= 0
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject {|bike| bike.broken? }
  end

end