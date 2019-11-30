class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    # Redirect to the sessions controller's #new action unless there's a matching name in the session
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
end