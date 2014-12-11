require 'garage'

describe Garage do 
let(:garage) { Garage.new }
let(:bike) { Bike.new }

it 'can fix bikes' do
  bike.break!
  garage.dock(bike)
  garage.fix_bikes
  expect(garage.bikes.sample).not_to be_broken
 end

it 'can fix bikes as soon as they arrive' do
	bike.break!
	garage.dock(bike)
	expect(garage.bikes.sample).not_to be_broken
end


end