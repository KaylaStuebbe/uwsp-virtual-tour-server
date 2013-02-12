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

require 'test_helper'

class TourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
