# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@dsaf.ch'
  layout 'mailer'
end
