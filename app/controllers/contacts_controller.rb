# frozen_string_literal: true

class ContactsController < ApplicationController
  include Recaptcha

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid? && recaptcha_valid?(params[:recaptcha])
      ContactsMailer.contact_message(@contact).deliver_now
      flash[:dark] = 'Thank you for your message. We will contact you soon.'
    else
      flash[:danger] = 'Something went wrong. Please try again or send an email to info@dsaf.ch'
    end

    redirect_to new_contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :message, :email)
  end
end
