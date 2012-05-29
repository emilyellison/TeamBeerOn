TeamBeerOn::Application.routes.draw do
  
  root to: 'beer_me#location'
  
  get 'sign_in' => 'sessions#new', as: :sign_in
  post "sessions/create"
  get 'sign_out' => 'sessions#destroy', as: :sign_out

  get 'beers/1/rate' => 'beers#rate', as: :rate_beer 
  get 'sign_up' => 'members#new', action: 'new', as: :sign_up
  get 'members/:id' => 'members#show', as: :member
  get 'members/:id/edit' => 'members#edit', as: :edit_member
  get 'contact' => 'information#contact'

	
  
end
