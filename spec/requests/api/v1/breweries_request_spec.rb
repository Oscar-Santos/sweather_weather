# require 'rails_helper'
#
# RSpec.describe 'breweries serializer' do
#   it 'returns info' do
#
#
#     get '/api/v1/breweries?location=denver&quantity=5'
#     parse = JSON.parse(response.body, symbolize_names: true)
#
#     expect(parse).to have_key(:data)
#     expect(parse[:data]).to be_a(Hash)
#
#
#     expect(parse[:data]).to have_key(:id)
#     expect(parse[:data][:id]).to eq(nil)
#
#     expect(parse[:data]).to have_key(:type)
#     expect(parse[:data][:type]).to be_a(String)
#
#
#     expect(parse[:data]).to have_key(:attributes)
#     expect(parse[:data][:attributes]).to be_a(Hash)
#
#     expect(parse[:data][:attributes]).to have_key(:destination)
#     expect(parse[:data][:attributes][:destination]).to be_a(String)
#
#     expect(parse[:data][:attributes]).to have_key(:forecast)
#     expect(parse[:data][:attributes][:forecast]).to be_a(Hash)
#
#     expect(parse[:data][:attributes]).to have_key(:breweries)
#     expect(parse[:data][:attributes][:breweries]).to be_a(Array)
#
#     expect(parse[:data][:attributes][:forecast]).to have_key(:summary)
#     expect(parse[:data][:attributes][:forecast][:summary]).to be_a(String)
#
#     expect(parse[:data][:attributes][:forecast]).to have_key(:temperature)
#     expect(parse[:data][:attributes][:forecast][:temperature]).to be_a(Float)
#
#     expect(parse[:data][:attributes][:breweries].first).to have_key(:id)
#     expect(parse[:data][:attributes][:breweries].first[:id]).to be_a(String)
#
#     expect(parse[:data][:attributes][:breweries].first).to have_key(:name)
#     expect(parse[:data][:attributes][:breweries].first[:name]).to be_a(String)
#
#     expect(parse[:data][:attributes][:breweries].first).to have_key(:brewery_type)
#     expect(parse[:data][:attributes][:breweries].first[:brewery_type]).to be_a(String)
#
#     expect(parse[:data][:attributes][:breweries].count).to eq(5)
#
#
#   end
#
#
#
#     it 'quantity has to be greater than 0' do
#         get '/api/v1/breweries?location=denver&quantity=0'
#       parse = JSON.parse(response.body, symbolize_names: true)
#
#       expect(parse).to have_key(:message)
#       expect(parse[:message]).to eq('quantity has to be greater than 0')
#     end
# end
