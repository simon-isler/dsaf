# frozen_string_literal: true

class Contact
  include ActiveModel::Model

  attr_accessor :name, :message, :email
  validates :name, :message, :email, presence: true
end
