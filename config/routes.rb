Rails.application.routes.draw do
  resources :homes do
    member do
      post 'favorite'
      post 'unfavorite'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Shrine::DownloadEndpoint => "/attachments"

  get 'pages/landing'
  get '/home'                         => 'homes#show'
  get '/delete'                       => 'homes#delete'
  root 'pages#landing'
  get  '/auth/:provider'              => 'omniauth#auth',    as: :auth
  get  '/auth/:provider/callback'     => 'session#create'
  get  '/auth/failure'                => 'session#failure'

  get  '/login'                       => 'session#new'
  post '/login'                       => 'session#create'
  get  '/logout'                      => 'session#destroy'
end
