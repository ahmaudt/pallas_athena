class SessionsController < ApplicationController
  def new; end

  def create
    @advisor = Advisor.find_by(ugamyid: params[:ugamyid])
    session[:advisor_id] = @advisor.id
    redirect_to '/'
  end

  private

  def sessions_params
    params.require(:ugamyid)
  end
end
