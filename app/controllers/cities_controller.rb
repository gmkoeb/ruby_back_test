class CitiesController < ApplicationController
  def index
    state = params[:state]
    name_part = params[:name_part]

    name_part == '' && @cities = City.where(state_id: State.where(name: state).first.id)

    name_part != '' && @cities = City.where(state_id: State.where(name: state).first.id).where('name LIKE ?', "#{name_part}%")

  end

end
