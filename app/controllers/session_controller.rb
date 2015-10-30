class SessionsController < ApplicationController::Base

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

def destroy

end



end