# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'users#homepage'

  devise_for :users

  resources :users do
    get 'homepage', on: :member
  end
end
