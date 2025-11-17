class CharactersController < ApplicationController
    def show
      @character = Character.find(params[:id])
      @party = Party.find(@character.party_id)
    end
end