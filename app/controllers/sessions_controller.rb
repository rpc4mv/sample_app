class SessionsController < ApplicationController

  def new
  end

  def create
    #switch to params[:session][:email / :password] if using form_for helper
    user = User.find_by_email(params[:email].downcase)
    if(user && user.authenticate(params[:password]))
      sign_in user
      redirect_back_or user
    else
       #Create an error
       flash.now[:error] = 'Invalid email/password combination' 
       render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
