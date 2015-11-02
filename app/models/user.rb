class User < ActiveRecord::Base
  has_secure_password 

  has_many :links
  has_many :comments

  validates_uniqueness_of :name
  validates_presence_of :name
end
