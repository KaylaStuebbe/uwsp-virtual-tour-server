class Tour < ActiveRecord::Base
  attr_accessible :description, :lat, :location, :long, :name
  has_many :poi
end
