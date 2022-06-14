require 'rails_helper'

RSpec.describe Brewery do
  it 'exists' do
    brewery = Brewery.new({
                    id: "10-barrel-brewing-co-denver-denver",
                    name: "10 Barrel Brewing Co - Denver",
                    city: 'Denver',
                    brewery_type: 'large'
                    })

    expect(brewery).to be_a(Brewery)
  end

  it 'has attributes' do
    brewery = Brewery.new({
                    id: "10-barrel-brewing-co-denver-denver",
                    name: "10 Barrel Brewing Co - Denver",
                    city: 'Denver',
                    brewery_type: 'large'
                    })


    expect(brewery.id).to eq("10-barrel-brewing-co-denver-denver")
    expect(brewery.name).to eq("10 Barrel Brewing Co - Denver")
    expect(brewery.city).to eq('Denver')
    expect(brewery.brewery_type).to eq('large')

  end
end
