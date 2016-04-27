class User < ActiveRecord::Base
	belongs_to :supplier

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
