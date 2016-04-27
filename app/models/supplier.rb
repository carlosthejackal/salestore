class Supplier < ActiveRecord::Base
	has_many :items
	has_many :sales
	has_many :users

	validates :name, presence: true
end
