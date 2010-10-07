class User < ActiveRecord::Base
  acts_as_authentic do |c|
  end
  
  def to_s
    email
  end
end
