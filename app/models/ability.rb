class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    return unless user.present?

    can :read, :all
    can :create, [Group, Entity]

    if user.role == 'admin'
      can :manage, :all
    else
      can :destroy, Group, author: user
      can :destroy, Entity, author: user
    end

    
  end
end