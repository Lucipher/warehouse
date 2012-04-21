class DashboardController < ApplicationController
	def index
		@total_content = 0
		Layer.all.each do |l|
			l.content = 0 if !l.content
			@total_content += l.content
		end

		@used = 0
	end
end