class Address < ActiveRecord::Base
  attr_accessible :city, :country, :name, :neighborhood, :number, :state, :lat, :long
  belongs_to :place
  belongs_to :event
end
