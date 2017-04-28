class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Photo, user_id: user.id
    can :read, Photo
    can :manage, Comment, user_id: user.id
    can :read, Comment
  end
end
