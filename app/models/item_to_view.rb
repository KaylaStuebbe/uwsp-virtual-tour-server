# == Schema Information
#
# Table name: item_to_views
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  poi_id          :integer
#  compass_heading :integer
#  altitude        :integer
#  body            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ItemToView < ActiveRecord::Base
  attr_accessible :altitude, :body, :compass_heading, :poi_id, :title
  belongs_to :poi
end
