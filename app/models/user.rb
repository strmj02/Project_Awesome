class User < ActiveRecord::Base
  require 'digest/md5'

  attr_accessible :name, :password, :profile, :email, :password_confirmation
  
  validates :name, :presence => TRUE, :length => { :minimum => 2, :allow_blank => TRUE }
  
  
end
