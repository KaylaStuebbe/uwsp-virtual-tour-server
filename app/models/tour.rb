class Tour < ActiveRecord::Base
  attr_accessible :description, :lat, :location, :long, :name
  has_many :pois, :class_name => "Poi"

  before_destroy :delete_pois

  def delete_pois
    pois.each do |p| 
      p.destroy 
    end
  end
end
