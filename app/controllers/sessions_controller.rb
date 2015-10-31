class SessionsController < ApplicationController

def new
	render:new
end

def create
	user = User.find_by!(name: params[:username])
		if user.password == params[:password]
			session[:user_id] = user.id
			redirect_to links_path
		else
			redirect_to login_path
		end
end

def destroy
	session[:user_id] = nil
	redirect_to login_path
end



end