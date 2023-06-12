class Api::PokemonController < ApplicationController
    def types 
        data_to_return = [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]
        render json: data_to_return
    end 

    def index 
        @pokemon = Pokemon.all
        render :index
    end 

    def show 
        @pokemon = Pokemon.find_by(id: params[:id])

        if @pokemon 
            render :show 
        else 
            render json: {error: "pokemon not found"}, status: :not_found
        end 

    end 

    


end
