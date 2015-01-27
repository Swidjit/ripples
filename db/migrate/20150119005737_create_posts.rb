class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :resource_type
      t.string :resource_id
      t.float :points, :default => 0
      t.integer :votes, :default => 0
      t.timestamps
    end
  end
end
