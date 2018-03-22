class PokemonsController < ApplicationController

  def new
  end

  def create
  	pokemon = Pokemon.create(pokemon_params)
  	trainer = current_trainer
  	pokemon.trainer = trainer
  	pokemon.health = 100
  	pokemon.level = 1
  	if pokemon.valid? == true
  	  pokemon.save
  	  redirect_to trainer_path(trainer)
  	else
  	  redirect_to new_path
  	  flash[:error] = pokemon.errors.full_messages.to_sentence
  	end
  end

  def capture
    pokemon = Pokemon.find(params[:id])
    trainer = current_trainer
	pokemon.trainer = trainer
	pokemon.save
	redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    trainer = current_trainer
    pokemon.health = pokemon.health - 10
    pokemon.save
    if pokemon.health == 0
      pokemon.destroy
    end
    redirect_to trainer_path(trainer)
  end

  private

    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end

end
