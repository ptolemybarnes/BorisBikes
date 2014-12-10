require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe ContainerHolder do 

let(:bike) { Bike.new }
let(:holder) { ContainerHolder.new }

  def fill_holder(holder)
    20.times { holder.dock(Bike.new) }
  end


  it "should accept a bike" do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)

  end

## tests of release method on bike_container.rb

  it "should release a bike" do
    holder.dock(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end

  it "should not cause a fault and return an error message if there are no bikes to delete" do
    expect(lambda{ holder.release(bike) }).to raise_error(RuntimeError, 'cannot release bike, holder is empty' )
  end

  it "should raise an error if release is called without passing an argument" do
    holder.dock(bike)
    expect(lambda{ holder.release() }).to raise_error(RuntimeError, 'Error: please specify object to be released')
  end

  it "should raise an error if something other than a bike is passed to release method" do
    holder.dock(bike)
    expect(lambda {holder.release("MONKEY") }).to raise_error(RuntimeError, 'Error: no monkeys')
  end

#^^^^^ tests of release method on bike_container.rb

  it "should know when it's full" do
    expect(holder).not_to be_full
    fill_holder holder
    expect(holder).to be_full
  end

  it "should not accept a bike if its full" do
    fill_holder holder
    expect(lambda{holder.dock(bike) }).to raise_error(RuntimeError, 'Holder is full')
  end

  it "should provide the list of available bikes" do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    holder.dock(working_bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq([working_bike])
  end



end