class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, :authenticate_advisor!, if: :devise_controller?
  before_action :set_advisor
  before_action :set_student, only: %i[show edit update]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :college_id, :first_name, :last_name, :ugamyid)
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def set_advisor
    @advisor = current_advisor
  end
end
