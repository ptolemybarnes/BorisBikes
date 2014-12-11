require 'DockingStation'

describe DockingStation do 

let(:station) { DockingStation.new(:capacity => 123)}

  it "should allow setting default capacity on initialising" do
    expect(station.capacity).to eq(123)
  end

  it "should have a name" do
  	docking_station = DockingStation.new
  	expect(docking_station.name.kind_of? String).to eq(true)

  end

end