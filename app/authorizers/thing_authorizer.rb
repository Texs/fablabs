class ThingAuthorizer < ApplicationAuthorizer

  def self.creatable_by?(user)
    user.has_role?(:admin) || user.has_role?(:superadmin)
  end

  def self.updatable_by?(user)
    user.has_role?(:admin) || user.has_role?(:superadmin)
  end

  def self.readable_by?(user)
    true
  end

end
