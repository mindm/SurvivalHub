# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#

require 'digest'

class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation

  has_many :posts
  
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => { :within => 8..30 }
  
  before_save :encrypt_password
  
  private
  
    def encrypt_password
      self.encrypted_password = Digest::SHA2.hexdigest(password)
    end
      
    
end
