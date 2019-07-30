class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find(params[:id])
        if game
            render json: game
        else
            render json: {errors: "No Game Found"}
        end
    end

    def update_game_status
        game = Game.find(params[:id])
        if game.update({status: "IN_PROGRESS"})
            render json: game
        else
            render json: {errors: "Cannot Update"}
        end
    end

    def create
        game = Game.new(game_params)
        if game.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                GameSerializer.new(game)
              ).serializable_hash
              ActionCable.server.broadcast 'games_channel', serialized_data
              head :ok
        end
    end

    def open_games
        open_games = Game.where(status: "WAITING")
        render json: open_games
    end

    private

    def game_params
        params.require(:game).permit(:name, :num_of_players)
    end
end
