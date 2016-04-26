class SaleDetail < ActiveRecord::Base
	belongs_to :item
	belongs_to :sale

	validates :item_id, :sale_id, presence: true
end
