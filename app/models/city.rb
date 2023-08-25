# frozen_string_literal: true

# City table with multiple cities belonging to one state
class City < ApplicationRecord
  belongs_to :state

  def self.filter_by_city_and_state(state, city)
    if city == ''
      City.where(state_id: State.where(name: state).first.id)
    elsif city != ''
      City.where(state_id: State.where(name: state).first.id).where('name LIKE ?', "#{city}%")
    end
  end
end
