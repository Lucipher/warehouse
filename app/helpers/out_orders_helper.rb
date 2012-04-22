# -*- encoding: utf-8 -*-
module OutOrdersHelper
	def btn_s(out_order)
		order = out_order
		case order.status
		when 0
			return "开始捡货"
		when 1
			return "确认出库"
		else
			return "开始捡货"
		end
	end
end
