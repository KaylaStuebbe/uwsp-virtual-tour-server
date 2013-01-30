class Poi < ActiveRecord::Base
  attr_accessible :lat, :long, :title
  has_many :item_to_view

  def ioi
    return self.item_to_view
  end
end
