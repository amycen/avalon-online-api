class GameRolesController < ApplicationController

    def create
        game_role = GameRole.new(game_role_params.merge!(user_id: request.headers["Authorization"].to_i))
        game = Game.find(game_role_params[:game_id])
        if game && game_role.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            GameRoleSerializer.new(game_role)
          ).serializable_hash
          GameRolesChannel.broadcast_to game, serialized_data
          head :ok
        end
      end

    def get_players
        game_roles = GameRole.where(game_id: params[:game_id].to_i)
        render json: game_roles
        
    end
      
    private
    
    def game_role_params
    params.require(:game_role).permit(:game_id, :result, :role_id)
    end
end
