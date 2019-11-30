class SessionsController < ApplicationController
  def new
  end

  def create
    # redirect to the sessions# new action if:
      # if the :name in params does not exist
      # OR the :name in params is emtpy,
        # Create a session with :name attribute equal to the name input in params
    #then redirect to the application controller's #hello action
    return redirect_to(controller: 'sessions',
       action: 'new') if !params[:name] || params[:name].empty?
session[:name] = params[:name]
redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    # Delete the session's attribute: name
    session.delete :name
    # redirect the request to the application controller on the #hello action
    redirect_to controller: 'application', action: 'hello'
  end
end
