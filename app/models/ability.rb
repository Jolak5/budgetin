class Ability
  include CanCan::Ability

  def initialize(user)
 
    return unless user.present?

    can :read, :all
    can :create, [Group, Entity]


    can :manage, :all

    can :destroy, Group, author: user
    can :destroy, Entity, author: user
  end
end
