class AddRefferingPostIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :referring_post_id, :integer
  end
end
