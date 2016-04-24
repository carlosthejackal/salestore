class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :original_price, precision: 8, scale: 2
      t.integer :supplier_id
      t.integer :item_type_id

      t.timestamps null: false
    end
  end
end
