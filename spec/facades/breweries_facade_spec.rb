# require 'rails_helper'
#
# RSpec.describe BreweriesFacade do
#   it 'returns an array of Brewery objects' do
#     breweries = BreweriesFacade.get_all_for_city('denver', 5)
#
#     expect(breweries).to be_a(Array)
#     expect(breweries.first).to be_a(Brewery)
#     expect(breweries.count).to eq(5)
#   end
#
#   it 'removes the state' do
#     expect(BreweriesFacade.remove_state("denver, co")).to eq('denver')
#
#   end
# end
