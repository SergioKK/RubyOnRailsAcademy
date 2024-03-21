class LabReportPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    true
  end

  def edit?
    update?
  end

  def update?
    @user.has_any_role? :teacher, :student
  end

  def add_mark?
    @user.has_role? :teacher
  end

  def destroy?
    @user.has_role? :teacher
  end
end
