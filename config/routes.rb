# frozen_string_literal: true

SolidusBraintree::Engine.routes.draw do
  resource :checkout, only: [:update, :edit]
  resource :client_token, only: [:create], format: :json
  resource :transactions, only: [:create]

  resources :configurations do
    collection do
      get :list
      post :update
    end
  end

  get '/content/cvv', to: 'content#cvv', as: :cvv
end
