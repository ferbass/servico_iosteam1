class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :places
  has_many :events
end
