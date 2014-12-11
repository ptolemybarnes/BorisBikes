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

	  it "should be able to inquire of the bike inventory" do
	  	van.inquire(docking_station)

		end

	describe "inquire" do

		it "should return a total count of 5 bikes" do

			bike_count = van.inquire(docking_station)[:total_count]
			expect(bike_count).to eq(5)
		end

	end
end