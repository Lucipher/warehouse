class OutOrderItem < ActiveRecord::Base
	belongs_to :out_order
	belongs_to :product
end
