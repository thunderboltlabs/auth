class UserPolicy < ApplicationPolicy
  def show?
    user.id == current_user.id
  end

  private

  def user
    record
  end
end
