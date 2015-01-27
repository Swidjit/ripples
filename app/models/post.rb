class Post < ActiveRecord::Base

  belongs_to :user
  has_many :votes
  has_one :video,dependent: :destroy
  has_one :image,dependent: :destroy
  has_one :quote,dependent: :destroy
  has_one :prose,dependent: :destroy
  acts_as_taggable
  accepts_nested_attributes_for :prose, :quote, :video, :image

  scope :popular, -> {order('votes_count DESC')}
end
