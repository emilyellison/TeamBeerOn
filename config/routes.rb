TeamBeerOn::Application.routes.draw do
  
  resources :ratings, except: [ :index ]

  root to: 'static_pages#home'
  
	resources :sessions
	resources :members, except: [ :destroy ]
	
	get '' => 'static_pages#home'
	get 'about' => 'static_pages#about', as: :about

  get 'members/:id' => 'members#show', as: :member	
	get 'sign_up' => 'members#new', as: :sign_up
  get 'members/:id/edit' => 'members#edit', as: :edit_member
	
	get "sign_in" => 'sessions#new', :as => :sign_in
  get "sign_out" => 'sessions#destroy', :as => :sign_out
  post "sessions/create" => 'sessions#create'

  get 'location' => 'beer_me#location', as: :location
  post 'location' => 'beer_me#pass_location', as: :pass_location
  get 'preference' => 'beer_me#preference', as: :beers
  post 'preference' => 'beer_me#save_preference_and_recommendation', as: :save_preference_and_recommendation
  get 'recommendation' => 'beer_me#recommendation', as: :recommendation
  
  get '/contact_us' => 'inquiries#new', :as => :contact_us
  post '/contact_us' => 'inquiries#create'
  
end

