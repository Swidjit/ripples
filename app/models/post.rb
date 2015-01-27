class Post < ActiveRecord::Base

  belongs_to :user
  has_one :video
  has_one :image
  has_one :quote
  has_one :prose
  acts_as_taggable
  accepts_nested_attributes_for :prose, :quote, :video, :image
end
