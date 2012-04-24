class Partition < ActiveRecord::Base
  has_many :topics
  # TODO validation 
  # rename to Category
  scope :by_name, order("name desc")
end
