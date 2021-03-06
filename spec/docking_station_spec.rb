require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do
  it {should respond_to(:release_bike) }

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it  "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end



end
