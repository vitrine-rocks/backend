# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :portal do
    resources :product_categories, only: %i[index], defaults: { format: :json }
  end
end
