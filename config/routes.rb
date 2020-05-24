# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  resources :medics, only: %i[new create]

  devise_for :users, path: '/admin'
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
