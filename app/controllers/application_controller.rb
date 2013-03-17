class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  after_filter :verify_authorized, :except => :index
end
