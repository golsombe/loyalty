class UsersObserver < ActiveRecord::Observer
  def after_create(users)
    UsersMailer.deliver_signup_notification(users)
  end

  def after_save(users)
  
    UsersMailer.deliver_activation(users) if users.recently_activated?
  
  end
end
