class Tour < ActiveRecord::Base
  attr_accessible :description, :lat, :location, :long, :name
  has_many :pois, :class_name => "Poi"
end
