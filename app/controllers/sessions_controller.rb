class SessionsController < ApplicationController

	def new
		render:new
	end

	def create
		user = User.find_by!(name: params[:username])
		if user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to links_path
		else
			flash[:notice] = "You must enter a valid username and password. Do you have an account?"
			redirect_to login_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end

end