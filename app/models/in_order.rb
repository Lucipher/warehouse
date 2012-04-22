class InOrder < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	has_one :in_order_item
end
