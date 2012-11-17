class Event < ActiveRecord::Base
  has_many :addresses
  belongs_to :category
end
