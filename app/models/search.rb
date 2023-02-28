require 'poke-api-v2'

class Search < ApplicationRecord
  def self.get(pokemon)
    pokemon.is_a?(String) ? PokeApi.get(pokemon: pokemon) : PokeApi.get(pokedex: pokemon)  
  end 
end
