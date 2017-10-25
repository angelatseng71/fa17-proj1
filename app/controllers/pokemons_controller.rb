class PokemonsController < ApplicationController
	 def new
	 end
	 def create
	 	pokemon = Pokemon.new
	 	puts params
	 	pokemon.name = params[:pokemon][:name]
	 	pokemon.health = 100
	 	pokemon.level = 1
	 	pokemon.trainer = current_trainer
	 	if (pokemon.save)
	 		redirect_to trainer_path(pokemon.trainer)
	 	else 
	 		flash[:error] = pokemon.errors.full_messages.to_sentence
	 		redirect_to trainer_path(pokemon.trainer)
	 	end 
	 	
		
	end

	def capture
	 	pokemon = Pokemon.find(params[:id])
	 	pokemon.trainer = current_trainer
	 	pokemon.save
	 	redirect_to root_path
	end

	def damage
	 	pokemon = Pokemon.find(params[:id])
	 	pokemon.health = pokemon.health - 10
	 	if (pokemon.health <= 0) 
	 		pokemon.destroy
	 	end
	 	if (pokemon.health > 0)
	 		pokemon.save
	 	end
	 	redirect_to trainer_path(pokemon.trainer)
	end
end
