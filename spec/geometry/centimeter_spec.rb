require 'spec_helper'

describe 'Centimeter' do
 it "should be 100" do
   test = Centimeter.new(Unit::CM)
   expect(test.scale).to eq(100)
 end
end