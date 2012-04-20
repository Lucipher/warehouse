# -*- encoding: utf-8 -*-
class OutOrder < ActiveRecord::Base
	belongs_to :user
	belongs_to :product

	def status2s
		case self.status
		when 0
			return "未开始"
		when 1
			return "开始验货"
		when 2
			return "完成出库"
		else
			return "Other"
		end
	end
end
