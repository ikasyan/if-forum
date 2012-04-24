class Topic < ActiveRecord::Base
  belongs_to :partition
  belongs_to :user
  has_many :posts, :dependent => :destroy
  validates_associated :posts
  validates :name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
  validates :name,  :length => { :minimum => 3 }
  validates :name, :length => { :maximum => 50, :too_long => "%{count} characters is the maximum allowed" }
  validates :description, :length => { :in => 6..50 }
  
  scope :recent, order("updated_at desc")

  #cattr_reader :per_page @@per_page = 5

end
