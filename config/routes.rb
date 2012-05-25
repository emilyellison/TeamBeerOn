TeamBeerOn::Application.routes.draw do
  
  root to: 'beer_me#location'
  
  get 'preference' => 'beer_me#preference', as: :preference
  post 'recommendation' => 'beer_me#recommendation', as: :recommendation
  get 'sign_in' => 'sessions#new', as: :sign_in
  get 'sign_out' => 'sessions#destroy', as: :sign_out
  get 'ratings/new' => 'ratings#new', as: :new_rating 
  get 'sign_up' => 'members#new', action: 'new', as: :sign_up
  get 'members/1' => 'members#show', as: :show_member
  get 'members/1/edit' => 'members#edit', as: :edit_member
  get 'contact' => 'information#contact'
  
end
