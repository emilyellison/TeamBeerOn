TeamBeerOn::Application.routes.draw do
  
  root to: 'beer_me#location'
  
	resources :members
	
	resources :sessions
	get "sessions/new", :as => :sign_in
  get "signout" => 'sessions#destroy', :as => :sign_out
  post "sessions/create"
 

  get 'beers/1/rate' => 'beers#rate', as: :rate_beer 
  get 'sign_up' => 'members#new', action: 'new', as: :sign_up
  get 'members/:id' => 'members#show', as: :member
  get 'members/:id/edit' => 'members#edit', as: :edit_member
  get 'contact' => 'information#contact'
  
	
  
end

