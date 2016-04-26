class ItemImage < ActiveRecord::Base
	belongs_to :item

	validates :image_url, :item_id, presence: true
end
