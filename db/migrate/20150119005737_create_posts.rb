class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :type
      t.string :content
      t.float :points
      t.timestamps
    end
  end
end
