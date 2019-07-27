class MessagesController < ApplicationController

    def create
        game = Game.find(message_params[:game_id])
        message = Message.new(message_params.merge!(user_id: request.headers["Authorization"].to_i))
        if game && message.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                MessageSerializer.new(message)
            ).serializable_hash
            MessagesChannel.broadcast_to game, serialized_data
            head :ok
        #else
        #    MessagesChannel.broadcast_to conversation, "Unable to send message"
        end
    end

    private

    def message_params
        params.require(:message).permit(:text, :game_id)
    end
end
