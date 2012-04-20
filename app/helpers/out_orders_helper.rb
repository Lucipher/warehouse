module OutOrdersHelper
	def btn_s(out_order)
		order = out_order
		case order.status
		when 0
			return "kaishi"
		when 1
			return "qurenruku"
		else
			return "kaishi "
		end
	end
end
