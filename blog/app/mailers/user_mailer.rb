class UserMailer < ApplicationMailer
  default from: 'yu.qiu@amadeus.com'

  def welcome_email(user)
    @user = user
    @url = 'http://nc.com/login'
    mail(to: @user.email, subject: 'Welcome to Ponys place')
  end
end
