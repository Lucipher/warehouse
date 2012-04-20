module ApplicationHelper
	def active(c_name)
		return "active" if controller_name == c_name
	end
end
