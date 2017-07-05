class AnimalsController < ApplicationController

	def new_animal
		if request.get?
			render 'new_animal', layout: 'application'
		elsif request.post?
			params = new_animal_params
			begin
				name = params[:animal_name]
				age = params[:animal_age]
				description = params[:animal_description]
				gender = params[:animal_gender]
				animal = Animal.create(name: name, age: age, gender: gender, description: description)
			rescue
				render 'new_animal_fail', layout: 'application'
			else
				redirect_to animals_show_all_animals_path
			end
		end
	end

	def edit_animal
		params = edit_animal_params
		if request.get?
			begin
				@animal = Animal.find(params[:id])
			rescue
				render 'new_animal_fail', layout: 'application'
			else
				render 'edit_animal', layout: 'application'
			end
		elsif request.post?
			begin
				animal = Animal.find(params[:id])
				animal.update(name: params[:animal_name])
				animal.update(gender: params[:animal_gender])
				animal.update(age: params[:animal_age])
				animal.update(description: params[:animal_description])
				animal.save
			rescue
				render 'new_animal_fail', layout: 'application'
			else
				redirect_to animals_show_all_animals_path
			end
		end
	end

	def show_all_animals
		@animals = Animal.all
		render 'show_all_animals', layout: 'application'
	end

	private

	def new_animal_params
		params.permit(:animal_name, :animal_description, :animal_age, :animal_gender)
	end

	def edit_animal_params
		params.permit(:animal_name, :animal_description, :animal_age, :animal_gender, :id)
	end
end
