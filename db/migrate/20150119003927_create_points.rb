class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :points
      t.references :user, index: true
    end
  end
end
