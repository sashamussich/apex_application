class Member < ActiveRecord::Base
   
  belongs_to :user
  acts_as_tenant

  def self.create_new_member(user, **args)
    return Member.create(user: user, name: args[:name], 
      phone: args[:phone], cpf: args[:cpf], address: args[:address], 
      function: args[:function], included: args[:included], admin: args[:admin], active: true)
  end

  def self.create_org_admin(user)
    new_member = create_new_member(user, admin: true)
    unless new_member.errors.empty?
      raise ArgumentError, new_member.errors.full_messages.uniq.join(", ")
    end
    return new_member
  end

end
