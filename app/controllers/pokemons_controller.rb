class PokemonsController < ApplicationController

  def capture
  	  pokemon = Pokemon.find(params[:id])
	  trainer = current_trainer
	  pokemon.trainer = trainer
	  pokemon.save
	  redirect_to root_path
  end

end
