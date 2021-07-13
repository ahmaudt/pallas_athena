class SessionController < ApplicationController
  def new; end

  def create
    session[:advisor] = params[:advisor]
    redirect_to '/'
  end
end
