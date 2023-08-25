# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'cities', to: 'cities#index'
end
