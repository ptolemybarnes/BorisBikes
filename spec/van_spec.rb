require 'van'

describe Van do

let(:van) { Van.new }
let(:bike) { double(:bike,  :class => Bike, :broken? => false)}
let(:broken_bike) { double(:broken_bike, :broken? => true, :class => Bike )}
let(:docking_station) { double(:release => bike )}

  describe "receive" do
    
    it "should be able to receive a bike from docking station." do
      released_bike = docking_station.release(bike)
      van.dock(released_bike)
      expect(van.bike_count).to eq(1)
    end
  end

  it "should be able to inquire of the bike inventory" do
end

end