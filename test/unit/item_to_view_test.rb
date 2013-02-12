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

require 'test_helper'

class ItemToViewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
