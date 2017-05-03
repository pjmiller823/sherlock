# Preview all emails at http://localhost:3000/rails/mailers/sherlock_mailer
class SherlockMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sherlock_mailer/welcome
  def welcome
    SherlockMailer.welcome(User.first)
  end

  # Preview this email at http://localhost:3000/rails/mailers/sherlock_mailer/favorites
  def favorites
    SherlockMailer.favorites(Home.first, User.last)
  end

  # Preview this email at http://localhost:3000/rails/mailers/sherlock_mailer/weekly
  def weekly
    SherlockMailer.weekly(Home.all)
  end

end
