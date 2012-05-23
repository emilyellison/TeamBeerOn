TeamBeerOn::Application.routes.draw do

  get 'members/1', controller: 'members', action: 'show', as: :show_member
  get 'members/1/edit', controller: 'members', action: 'edit', as: :edit_member
  
end
