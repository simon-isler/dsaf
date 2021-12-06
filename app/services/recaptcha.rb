# frozen_string_literal: true

module Recaptcha
  RECAPTCHA_API_URL = 'https://www.google.com/recaptcha/api/siteverify'
  DEFAULT_THRESHOLD = 0.5

  def recaptcha_valid?(token)
    return true unless recaptcha_enabled?

    uri = URI("#{RECAPTCHA_API_URL}?secret=#{ENV['RECAPTCHA_SECRET_KEY']}&response=#{token}")
    result = JSON.parse(Net::HTTP.get(uri))
    result['success'] && result['score'] >= DEFAULT_THRESHOLD
  rescue StandardError
    true
  end

  def recaptcha_enabled?
    [ENV['RECAPTCHA_SITE_KEY'], ENV['RECAPTCHA_SECRET_KEY']].all?(&:present?)
  end
end
