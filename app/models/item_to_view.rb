class ItemToView < ActiveRecord::Base
  attr_accessible :altitude, :body, :compass_heading, :poi_id, :title
  belongs_to :poi
end
