Rails.application.routes.draw do
  resources :posts

  get '/:user_id', to: 'posts#user_profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
