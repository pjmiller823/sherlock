class SherlockMailer < ApplicationMailer
  default from: "thisisfake@fake.com"

  def welcome(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to Sherlock!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sherlock_mailer.favorites.subject
  #
  def favorites(home, current_user)
    @home = home
    @current_user = current_user
    mail(to: @home.created_by.email, subject: "Someone favorited the house you listed!")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sherlock_mailer.weekly.subject
  #
  def weekly(home)
    @home = home

    mail subject: "New homes added this week!",
         bcc: User.all.pluck(:email)
  end
end
