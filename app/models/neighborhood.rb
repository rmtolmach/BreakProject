class Neighborhood < ActiveRecord::Base
  has_many :activities
  validates :name, :uniqueness => true, :presence => true
end

#require unique name, and presence of name.
