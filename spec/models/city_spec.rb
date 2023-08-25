# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  describe '.filter_by_city_and_state' do
    State.create(name: 'Parana')
    city1 = City.create(name: 'Curitiba', state: State.where(name: 'Parana').first)
    city2 = City.create(name: 'Colombo', state: State.where(name: 'Parana').first)
    city3 = City.create(name: 'Ponta Grossa', state: State.where(name: 'Parana').first)
    it 'returns all cities in the given state if no city is given at input' do
      result = City.filter_by_city_and_state('Parana', '')
      expect(result).to contain_exactly(city1, city2, city3)
    end
    it 'returns all cities in the given state with the same name as the string at city input' do
      result = City.filter_by_city_and_state('Parana', 'Curitiba')
      expect(result).to contain_exactly(city1)
    end
    it 'returns all cities with part of the name corresponding to the string at city input' do
      result = City.filter_by_city_and_state('Parana', 'C')
      expect(result).to contain_exactly(city1, city2)
    end
    it 'returns no cities if no cities correlate with the string at city input' do
      result = City.filter_by_city_and_state('Parana', 'Fortaleza')
      expect(result).to eq([])
    end
  end
end
