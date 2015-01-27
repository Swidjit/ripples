class Post < ActiveRecord::Base

  belongs_to :user
  has_one :video
  has_one :image
  has_one :quote
  has_one :prose
end
