class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  after_filter :verify_authorized, unless: "devise_controller?"

  private

  def verify_authorized
    raise NotAuthorizedError.new(params.to_s) unless @_policy_authorized
  end
end
