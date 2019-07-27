class ConversationsController < ApplicationController

    def index
        conversations = Conversation.all
        render json: conversations
    end

    def show
        conversation = Conversation.find(params[:id])
        if conversation
            render json: conversation
        else
            render json: {errors: "No Conversation Found"}
        end
    end

    def create
        game = Game.find(conversation_params[:game_id])
        conversation = Conversation.new({game_id: game.id})
        if game && conversation.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ConversationSerializer.new(conversation)
            ).serializable_hash
            ActionCable.server.broadcast 'conversations_channel', serialized_data
            head :ok
        else
            ActionCable.server.broadcast 'conversations_channel', 'Cannot Load Chat'
        end
    end

    private

    def conversation_params
        params.require(:conversation).permit(:game_id)
    end
end
