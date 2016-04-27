class RemoveIndexItems < ActiveRecord::Migration
  def change
  	add_index :items, :supplier_id, name: 'index_items_on_supplier_id2'
    add_index :items, :item_type_id, name: 'index_items_on_item_type_id2'
    add_index :sales, :supplier_id
    add_index :sale_details, :item_id
    add_index :sale_details, :sale_id
    add_index :item_images, :item_id
  end
end
