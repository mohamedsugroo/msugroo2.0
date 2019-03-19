Rails.application.routes.draw do

  resources :blocks
  resources :works, path: 'our_work'
  resources :contacts
  post 'newcomment', to: 'contacts#create'
  get 'dashboard', to: 'dashboard#index'
  get 'who_we_are', to: 'home#whoweare'
  get 'lets-talk', to: 'home#letstalk'


  get 'privacypolicy', to: 'home#privacypolicy'


  devise_for :users
  resources :reviews
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts, path: 'our_two_cents'
  resources :services, path: 'whatwedo'
  resources :sections, except: [ :show]
  root 'home#index'

  resources :services, path: 'whatwedo', :except => [:edit, :new, :destroy] do
  	resources :sections, path: '', only: [:index, :show]
  end

end
