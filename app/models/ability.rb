class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.is_admin?
      can :manage, [Category, Product]
    elsif user.is_normal_user?
      can :normal_user, [Category, Product]
    end
  end
end
