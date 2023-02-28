require 'poke-api-v2'

class Search < ApplicationRecord
  def self.get(query)
    if query.is_a?(String) && !query.nil?
      PokeApi.get(pokemon: query)
    elsif query.is_a?(Integer) && !query.nil?
      PokeApi.get(pokedex: query)
    end
  end 
end
