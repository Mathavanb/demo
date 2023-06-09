class UserMailJob < ApplicationJob
  queue_as :default

  def perform(user)
    @user = user
    UserMailer.welcome_email(@user).deliver_now
  end
end
