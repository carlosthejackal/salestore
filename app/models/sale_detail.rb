class SaleDetail < ActiveRecord::Base
	belongs_to :item
	belongs_to :sale

	validates :sale, :item, presence: true
end
