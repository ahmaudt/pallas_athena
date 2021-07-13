class SessionController < ApplicationController
  def new; end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end
end
