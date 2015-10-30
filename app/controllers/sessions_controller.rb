class SessionsController < ApplicationController

def new
	render:new
end

def create
	user = User.find_by!(name: params[:name])
		if user.password == params[:password]
			session[:user_id] = user.id
			redirect links_path
		else
			redirect login_path
		end
end

def destroy
	session[:user_id] = nil
	redirect to login_path
end



end