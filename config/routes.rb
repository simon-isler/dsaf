# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'pages#show', page_name: 'home'

  get '/pages/:page_name', to: 'pages#show'
  get '/contacts', to: 'contacts#new'
  resources :contacts, only: %i[new create]

  namespace :admin do
    root 'news#index'
    resources :news
    resources :staff_members
  end
end
