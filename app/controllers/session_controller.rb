class SessionController < ApplicationController
  def new
  end

  def create
    
    if user = User.authenticate_with_credentials(params[:E_mail], params[:password])
      redirect_to '/'
    else
      redirect_to '/login'
    end
    
    # user = User.find_by_E_mail(params[:E_mail])
    # If the user exists AND the password entered is correct.
    # if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      # session[:user_id] = user.id
      # redirect_to '/'
    # else
    # If user's login doesn't work, send them back to the login form.
      # redirect_to '/login'
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
