require 'van'

describe Van do

let(:van) { Van.new }
let(:bike) { double(:bike,  :class => Bike, :broken? => false)}
let(:broken_bike) { double(:broken_bike, :broken? => true, :class => Bike )}
let(:docking_station) { double(:release => bike, :bike_count => 5, :broken_bikes => 3, :available_bikes => [bike, bike])}

  describe "receive" do

    it "should be able to receive a bike from docking station." do
      released_bike = docking_station.release(bike)
      van.dock(released_bike)
      expect(van.bike_count).to eq(1)
    end
  end

  describe 'collect bike' do

    it "should be able to collect working bike" do
      Shoreditch = docking_station
      van.collect(:working_bike, 2, Shoreditch)
      expect(van.available_bikes.count).to eq(2)
    end
  end

	describe "inquire" do

		it "should return a total count of 5 bikes" do
			inventory = van.inquire(docking_station)
			expect(inventory[:total_count]).to eq(5)
      expect(inventory[:broken_count]).to eq(3)
      expect(inventory[:working_count]).to eq(2)
	  end
  end



end