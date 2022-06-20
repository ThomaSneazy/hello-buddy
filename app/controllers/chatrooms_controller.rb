class ChatroomsController < ApplicationController
  def show
    @activity = Activity.find(params[:activity_id])
    @chatroom = Chatroom.find_by(activity_id: params[:activity_id])
    @message = Message.new
  end
end
