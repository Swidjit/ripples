class Point < ActiveRecord::Base

  belongs_to :user
  scope :leaders, -> {order('points DESC')}

end
