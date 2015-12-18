class UserPolicy < ApplicationPolicy
  
  def show?
    user == current_user
  end

  def edit?
    false
  end

end