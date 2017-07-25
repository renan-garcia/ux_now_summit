class ContactMailer < ApplicationMailer
  default from: 'uxnowsummit@gmail.com'
  def contact_mail(name,email,text)
    @name = name
    @email = email
    @text = text
    mail(to: 'email@renangarcia.me', subject: 'Formulario de contato')
  end
end
