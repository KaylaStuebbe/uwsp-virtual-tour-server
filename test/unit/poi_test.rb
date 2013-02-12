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

require 'test_helper'

class PoiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
