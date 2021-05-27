class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
<<<<<<< HEAD
=======

  def index?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    return true
  end

  def update?
    record.user == user
  end
>>>>>>> dc9e6fb7288d739e8e1c61d48cc7bc0738584664
end
