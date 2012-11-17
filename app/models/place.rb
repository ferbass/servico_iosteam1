class Place < ActiveRecord::Base
  has_many :addresses
  belongs_to :category
end
