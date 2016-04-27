class Sale < ActiveRecord::Base
	belongs_to :supplier
	has_many :sale_details
	has_many :items, through: :sale_details
end
