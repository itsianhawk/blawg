class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  before_create :check_captcha
  
  attr_accessor :captcha
  
  def check_captcha
	  if @captcha.downcase.strip != "black"
		  errors.add_to_base "Captcha text was incorrect. Please try again."
		  return false
	  end
	  return true
  end
end
