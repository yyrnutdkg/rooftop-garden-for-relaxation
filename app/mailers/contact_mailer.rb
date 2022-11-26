class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail(
      to: @contact.email,
      from: "from@example.com",
      BCC: ENV["RECEIVE_CONTACT_MAIL"],
      subject: t('defaults.info_subject')
   )
  end
end
