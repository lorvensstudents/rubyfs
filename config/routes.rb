Rails.application.routes.draw do
  resources :classments
  get 'friends/wellcome'

  get 'friends/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
