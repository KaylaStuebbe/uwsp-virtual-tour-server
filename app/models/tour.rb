# == Schema Information
#
# Table name: tours
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  location    :string(255)
#  lat         :decimal(, )
#  long        :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

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
