class AddVideosToPosts < ActiveRecord::Migration
  def self.up
    add_attachment :posts, :video
  end

  def self.down
    remove_attachment :posts, :video
  end
end
