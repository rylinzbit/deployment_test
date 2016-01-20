class CommentsController < ApplicationController
  def create
    @comment = Comment.create(commnet: params[:comment], message: Message.find(params[:message_id]), user: User.find(params[:user_id]))
    redirect_to "/users/#{params[:user_id]}"
  end

  def destroy
  end
end
