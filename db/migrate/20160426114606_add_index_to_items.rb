class AddIndexToItems < ActiveRecord::Migration
  def change
    add_index :items, :supplier_id, unique: true
    add_index :items, :item_type_id, unique: true
  end
end
