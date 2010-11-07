class User < ActiveRecord::Base
  ROLES = [
    ["Admin", "admin"],
    ["Band", "band"],
    ["Family", "family"],
    ["Fan", "fan"]
    ]

  acts_as_authentic do |c|
    c.login_field = 'email'
  end
  
  validates_presence_of :role
  validates_inclusion_of :role, :in => ROLES.map{|disp, value| value}
  
  def admin?
    role == 'admin'
  end
  
  def band?
    role == 'band'
  end
  
  def family?
    role == 'family'
  end
  
  def fan?
    role == 'fan'
  end

end
