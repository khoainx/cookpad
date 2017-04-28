class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Photo, user_id: user.id
    can :read, Photo
  end
end
