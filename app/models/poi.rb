# == Schema Information
#
# Table name: pois
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  lat        :decimal(, )
#  long       :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tour_id    :integer
#

class Poi < ActiveRecord::Base
  attr_accessible :lat, :long, :title
  has_many :item_to_view
  belongs_to :tour

  def ioi
    return self.item_to_view
  end
end
