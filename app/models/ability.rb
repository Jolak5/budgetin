class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    return unless user.present?

    can :read, :all
    can :create, [Group, Entity]


    can :manage, :all

    can :destroy, Group, author: user
    can :destroy, Entity, author: user
  end
end
