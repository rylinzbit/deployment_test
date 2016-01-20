class SessionsController < ApplicationController
  def new
    redirect_to :root
  end

  #create the session resource ie, let user log in
  def create
    #this references the funciton we made in user.rb
    user = User.authenticate(params[:session][:email], params[:session][:password])
    if user.nil?
      flash[:login_error] = "Couldn't find a user with those credentials"
      redirect_to new_session_path
    else
      redirect_to user
    end
  end

  def destroy
    reset_session
    redirect_to signin_path
  end
end
