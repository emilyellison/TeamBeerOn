TeamBeerOn::Application.routes.draw do
  
  root to: 'beer_me#location'

  get 'signup', controller: 'members', action: 'new', as: :sign_up
  get 'members/1', controller: 'members', action: 'show', as: :show_member
  get 'members/1/edit', controller: 'members', action: 'edit', as: :edit_member
  
end
