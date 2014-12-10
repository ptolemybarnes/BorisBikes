require 'garage'

describe Garage do 
let(:garage) { Garage.new }
let(:bike) { Bike.new }

it 'can fix bikes' do
  bike.break!
  end

end