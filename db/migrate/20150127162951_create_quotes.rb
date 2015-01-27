class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :text, :null => false
      t.string :author, :null => false
      t.belongs_to :post
    end
  end
end
