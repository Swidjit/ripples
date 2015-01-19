class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :parent_id
      t.integer :child_id
      t.integer :referring_post_id
    end
  end
end
