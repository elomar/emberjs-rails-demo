class Ability
  include CanCan::Ability

  def initialize(user)
    # role: guest
    can :read, Fact
    can :read, Tip
    can :create, User

    if user.present?
      # role: user
      can :manage, Tip
      can :manage, User, id: user.id

      if user.admin?
        # role: admin
        can :manage, Fact
        can :manage, User
      end
    end
  end
end
