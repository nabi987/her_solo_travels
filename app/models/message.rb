class Message < ApplicationRecord
  belongs_to :user
  belongs_to :friendship

  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to "friendship_#{friendship.id}_messages",
                        partial: "messages/message",
                        locals: { message:self , user:user}
  end
end
