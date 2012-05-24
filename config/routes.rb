TeamBeerOn::Application.routes.draw do
  
  root to: 'beer_me#location'
  
  get 'beers/1/rate' => 'beers#rate', as: :rate_beer 
  get 'signup' => 'members#new', action: 'new', as: :sign_up
  get 'members/1' => 'members#show', as: :show_member
  get 'members/1/edit' => 'members#edit', as: :edit_member
  get 'contact' => 'information#contact'
  
end
