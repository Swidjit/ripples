class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :description
      t.belongs_to :post
    end
    add_attachment :images, :image
  end

  def self.down
    drop_table :images
  end
end
