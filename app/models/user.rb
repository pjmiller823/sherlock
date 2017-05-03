class User < ApplicationRecord
  def self.from_omniauth(authentication_data)
    users = User.where(provider: authentication_data['provider'],
                       uid: authentication_data['uid'])
    if users.exists?
      Rails.logger.debug "I'm in exists"
      user = users.first
    else
      Rails.logger.debug "I'm in doesn't"
      user = users.create
      SherlockMailer.welcome(user).deliver_later
    end

    Rails.logger.debug "The user is #{user.inspect}"
    Rails.logger.debug "The authinfo is #{authentication_data.info}"

    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.access_token = authentication_data.info.access_token
    user.email        = authentication_data.info.email

    user.save!

    Rails.logger.debug "After saving, the user is #{user.inspect}"

    return user
  end

  has_many :homes
  has_many :favorites
end
