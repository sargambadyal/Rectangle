require 'spec_helper'

describe 'Unit' do

  it 'should scale 1 cm to 100mm' do
    unit1 = Unit.new(Unit::CM)
    expect(unit1.scale).to eq(100)
  end

  it 'should scale 1 m to 1000mm' do
    unit1 = Unit.new(Unit::METRE)
    expect(unit1.scale).to eq(1000)
  end
end