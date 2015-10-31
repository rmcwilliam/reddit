class User < ActiveRecord::Base
  has_many :links
  has_many :comments

  validates_length_of :password, minimum: 7
  validates_uniqueness_of :name
  validates_presence_of :name, :password
end
