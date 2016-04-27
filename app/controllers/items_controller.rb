class ItemsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_action :set_item, only: [:show, :edit, :update, :destroy]
	before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		
	end

	private
		def set_item
			@item = Item.find(params[:id])
		end

		def item_params
			params.require(:items).permit(:name, :description, :original_price, :supplier_id, :item_type_id)
		end

	    def set_s3_direct_post
	      @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
	    end
end
