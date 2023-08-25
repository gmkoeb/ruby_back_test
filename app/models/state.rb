# frozen_string_literal: true

# State table with multiple cities for each state
class State < ApplicationRecord
  has_many :cities
end
