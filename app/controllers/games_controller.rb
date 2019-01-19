class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    games = Game.all
    render json: games
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.create
    render json: @game, status: 201
  end
  
  def show
    render json: @game
  end
  
  def edit
  end
  
  def update
    @game = Game.find(params[:id])
    @game.update
    render json: @game, status: 202
  end  
  
  private
  
  def game_params
    params.permit(state: [])
  end
end
