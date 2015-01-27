class Post < ActiveRecord::Base

  belongs_to :user
  has_one :video
  has_one :image

end
