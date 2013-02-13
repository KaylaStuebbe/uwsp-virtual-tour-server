require 'spec_helper'

describe Tour do
  
  before do
    @tour = Tour.new({name:"Test Tour",location:"Stevens Point, WI", lat:44.525885, long:-89.552307 })
  end

  subject { @tour }

  it { should respond_to(:lat)} 
  it { should respond_to(:long)} 
  it { should respond_to(:to_gmaps4rails)} 
  
  it { @tour.to_gmaps4rails.should == "[{\"lat\":\"44.525885\",\"lng\":\"-89.552307\"}]" }
end
