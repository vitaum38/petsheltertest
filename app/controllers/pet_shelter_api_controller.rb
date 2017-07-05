class PetShelterApiController < ApplicationController
  def show_all_animals
  	@animals =  Animal.all
  	render 'show_all_animals', layout: 'application'
  end
end
