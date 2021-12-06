# frozen_string_literal: true

class ContactsMailer < ApplicationMailer
  def contact_message(contact)
    @contact = contact
    mail(to: 'info@dsaf.ch', subject: 'Contact request 🚀')
  end
end
