class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :supplier_id, :integer
  	add_index :users, :supplier_id
  end
end
