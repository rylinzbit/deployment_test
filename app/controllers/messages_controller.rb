class MessagesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @message = Message.create(:content => params[:message][:content], :user => @user)
    redirect_to "/users/#{params[:user_id]}"
  end

  def destroy
  end
end
