class UsersMailer < ActionMailer::Base
  def signup_notification(users)
    setup_email(users)
    @subject    += 'Please activate your new account'
  
    @body[:url]  = "http://YOURSITE/activate/#{users.activation_code}"
  
  end
  
  def activation(users)
    setup_email(users)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://YOURSITE/"
  end
  
  protected
    def setup_email(users)
      @recipients  = "#{users.email}"
      @from        = "ADMINEMAIL"
      @subject     = "[YOURSITE] "
      @sent_on     = Time.now
      @body[:users] = users
    end
end
