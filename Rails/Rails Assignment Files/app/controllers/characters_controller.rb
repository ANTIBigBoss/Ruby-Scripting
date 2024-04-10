class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  # Define other actions as needed: new, create, edit, update, destroy
end
