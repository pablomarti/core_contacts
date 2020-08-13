Rails.application.routes.draw do
  use_doorkeeper
  
  namespace :api, defaults: { format: 'json' } do
    api_version module: 'V1', path: { value: 'v1' } do
      resources :countries, only: %i[index]
      resources :contacts
    end
  end
end
