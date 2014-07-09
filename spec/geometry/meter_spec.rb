require 'spec_helper'

describe 'Metre' do
  it "should be 1000" do
    test = Metre.new(Unit::METRE)
    expect(test.scale).to eq(1000)
  end
end