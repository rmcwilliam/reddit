class RegistrationsController < ApplicationController

  def new
    @user = User.new
    render :new 
  end


  def create 
    @user = User.new(name: params[:username],
                     email: params[:email],
                     password: params[:password])

    if @user.save
      UserMailer.welcome_email(@user)deliver_now
      render "create.json.jbuilder", status: :created 
      redirect_to links_path
    else
      render :new
    end
  end
end