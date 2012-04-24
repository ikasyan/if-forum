class UserProfile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :first_name
 #validates , :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
  #validates :last_name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
 
end
