class PokemonsController < ApplicationController

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

end
