Rails.application.routes.draw do
  resources :homes
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

  post 'favorites/:home_id'           =>  'favorites#create'
  delete 'favorites/destroy/:home_id' =>  'favorites#destroy'
end
