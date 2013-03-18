class WelcomeController < ApplicationController
  skip_after_filter :verify_authorized

  def show
    if current_user
      redirect_to me_url
    else
      redirect_to new_user_session_url
    end
  end
end
