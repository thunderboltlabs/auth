class UsersController < ApplicationController
  def me
    @user = current_user
    authorize(@user, :show?)
  end
end
