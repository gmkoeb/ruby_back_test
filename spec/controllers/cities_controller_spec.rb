# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CitiesController, type: :request do
  describe 'GET #index' do
    it 'redirects to all cities for given state if name part is empty' do
      State.create(name: 'Parana')
      City.create(name: 'Curitiba', state: State.where(name: 'Parana').first)
      City.create(name: 'Colombo', state: State.where(name: 'Parana').first)
      City.create(name: 'Ponta Grossa', state: State.where(name: 'Parana').first)
      get cities_path, params: { state: 'Parana', name_part: '' }
      expect(response).to be_successful
      expect(response.body).to include('Curitiba', 'Colombo', 'Ponta Grossa')
    end
    it 'redirects to found cities corresponding to the name part' do
      get cities_path, params: { state: 'Parana', name_part: 'C' }
      expect(response).to be_successful
      expect(response.body).to include('Curitiba', 'Colombo')
    end
    it 'redirects to no city found if name_part doesnt correspond to any city in the database' do
      get cities_path, params: { state: 'Parana', name_part: 'Sao' }
      expect(response).to be_successful
      expect(response.body).to include('Não foi possível encontrar nenhuma cidade com essas especificações')
    end
  end
end
