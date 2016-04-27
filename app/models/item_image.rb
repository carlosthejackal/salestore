class ItemImage < ActiveRecord::Base
	belongs_to :item

	validates :image_url, :item, presence: true
end
