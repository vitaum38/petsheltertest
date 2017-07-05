Rails.application.routes.draw do

	# API Routes	
  get '/pet_shelter_api/show_all_animals', to: 'pet_shelter_api#show_all_animals', as: :api_show_all_animals

  # Animals Controller Routes
  get '/animals/new_animal', to: 'animals#new_animal', as: :animals_new_animal_get
  post '/animals/new_animal', to: 'animals#new_animal', as: :animals_new_animal_post
  get '/animals/show_all_animals', to: 'animals#show_all_animals', as: :animals_show_all_animals
  get '/animals/edit_animal/:id', to: 'animals#edit_animal', as: :animals_edit_animal_get
  post '/animals/edit_animal/:id', to: 'animals#edit_animal', as: :animals_edit_animal_post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
