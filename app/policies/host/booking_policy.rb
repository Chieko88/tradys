class Host::BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.joins(:experiences).where(experiences: {user: user})
    end
  end

  def update?
    record.experience.user == user
  end


end
