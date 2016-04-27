class RemoveIndexByNameItems < ActiveRecord::Migration
  def change
  	remove_index :items, name: :index_items_on_item_type_id
  	remove_index :items, name: :index_items_on_supplier_id
  end
end
