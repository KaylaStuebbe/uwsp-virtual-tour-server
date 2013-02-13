# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  score      :integer
#

class User < ActiveRecord::Base
  attr_accessible :email, :username, :score

  after_initialize :default_values
  before_save { |user| user.email = email.downcase }

  validates :username, presence: true
  validates :email, presence: true, length: { maximum: 50, minimum: 6 }, 
                    uniqueness: { case_sensitive: false }

  private
    def default_values
      self.score ||= 0
    end
end
