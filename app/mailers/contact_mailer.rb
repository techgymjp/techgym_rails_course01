class ContactMailer < ApplicationMailer

  def send_confirm(contact)
    @contact = contact
    mail to: contact.email, subject: 'お問い合わせありがとうございます'
  end

end
