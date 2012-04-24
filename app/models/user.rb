class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :user_profile   
  has_many :posts
  has_many :topics

  attr_accessible :email, :password, :password_confirmation, :remember_me

  accepts_nested_attributes_for :user_profile

  attr_accessible :user_profile_attributes
end
