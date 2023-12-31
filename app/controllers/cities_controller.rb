# frozen_string_literal: true

# Controller to list selected cities
class CitiesController < ApplicationController
  def index
    @cities = City.filter_by_city_and_state(params[:state], params[:name_part])
  end
end
