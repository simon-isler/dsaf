# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :trackable, :rememberable, :validatable
end
