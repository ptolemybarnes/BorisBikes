module BikeContainer

DEFAULT_CAPACITY = 20

  def bikes
    @bikes ||= []
  end

  def broken_bikes
    @broken_bikes ||= []
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

  def dock(bike=nil)
    if full?
      raise "Holder is full"  
    elsif bike == nil
      raise 'Error: please specify object to be docked'
    end
    raise "there's a monkey in my rack" unless bike.class == Bike

    bikes << bike
  end

  def release(bike=nil, bikes_to_release = 1)
    
    if empty?
      raise 'cannot release bike, holder is empty' 
    elsif bike.nil?
      raise 'Error: please specify object to be released'
    elsif bike.class != Bike
      raise 'Error: no monkeys' 
    elsif available_bikes.count == 0
      raise 'there are no working bikes'
    end

    bikes.delete_at(bikes.index {|bike| !bike.broken?})

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