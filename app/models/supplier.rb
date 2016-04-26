class Supplier < ActiveRecord::Base
	has_many :items
	has_many :sales

	validates :name, presence: true
end
