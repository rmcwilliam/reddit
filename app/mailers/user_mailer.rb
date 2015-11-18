class UserMailer < ApplicationMailer
   default from: "no-reply@herokuappinstuff.com"

   def welcome_email(user)
    @user = user 
    mail(to: user.email, subject: "Welcome to Reddit, kinda!")
end
