# -*- encoding: utf-8 -*-
class OutOrder < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	has_one :out_order_item

	validates_presence_of :product_id, :number
	attr_accessible :product_id, :number

	def status2s
		case self.status
		when 0
			return "未捡货"
		when 1
			return "捡货中"
		when 2
			return "完成出库"
		else
			return "Other"
		end
	end
end
