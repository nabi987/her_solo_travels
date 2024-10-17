class MessagesController < ApplicationController

    def create
      @friendship = Friendship.find(params[:friendship_id])
      @message = Message.new(message_params)
      @message.friendship = @friendship
      @message.user = current_user
        if @message.save
          respond_to do |format|
            format.turbo_stream do
              render turbo_stream: turbo_stream.append(:messages, partial: "messages/message",
              locals: { message: @message})
            end
            format.html { redirect_to messages_path(@messages) }
          end
        else
          render "friendship/index", status: :unprocessable_entity
    end
  end
  private
  def message_params
    params.require(:message).permit(:content)
  end
end
