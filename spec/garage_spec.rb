require 'garage'

describe Garage do 
let(:garage) { Garage.new }
let(:bike) { Bike.new }

it 'can fix bikes' do
  bike.break!
  garage.dock(bike)
  garage.fix_bikes
  expect(garage.bikes.select).not_to be_broken
  end

end