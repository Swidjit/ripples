class CreateProses < ActiveRecord::Migration
  def change
    create_table :proses do |t|
      t.string :text, :null => false
      t.belongs_to :post
    end
  end
end
