class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable

  has_many :links
  has_many :comments

  validates_uniqueness_of :name
  validates_presence_of :name
end
