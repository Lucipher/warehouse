class UsersController < InheritedResources::Base
	before_filter :authenticate_user!

	def update
		user = User.find(params[:id])
		if params[:user][:password] && params[:user][:password] != ''
			user.password = params[:user][:password]
		end

		if params[:user][:role]
			user.role = params[:user][:role].to_i
		end

		user.username = params[:user][:username]
		if user.save
			redirect_to user_path(user)
		else
			redirect_to edit_user_path(user)
		end
	end
end