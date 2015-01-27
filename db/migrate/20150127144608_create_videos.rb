class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :description
      t.belongs_to :post
    end
    add_attachment :videos, :video
  end

  def self.down
    drop_table :videos
  end
end
