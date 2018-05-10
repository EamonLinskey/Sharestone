class ContactMailer < ActionMailer::Base
  default to: 'Eamon.Linskey@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Sharestone Contact Form Message')
  end
end