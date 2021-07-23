# frozen_string_literal: true

class Advisors::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]
  # skip_after_action :verify_authenticity_token, only: :google_oauth2

  def google_oauth2
    @advisor = Advisor.from_omniauth(request.env['omniauth.auth'])

    if @advisor.persisted?
      sign_in_and_redirect @advisor, event: :authenticate
      set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except!(:extra)
      redirect_to new_advisor_registration_url, alert: @advisor.errors.full_messages.join('\n')
    end
  end

  def failure
    redirect_to root_path
  end

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
