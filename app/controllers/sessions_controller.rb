class SessionsController < ApplicationController
  def new; end

  def create
    @advisor = Advisor.find_by(ugamyid: params[:advisor])
    session[:advisor_id] = @advisor.id
    redirect_to '/'
  end
end
