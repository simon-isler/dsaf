# frozen_string_literal: true

module Admin
  class News < ApplicationRecord
    validates :title, presence: true
  end
end
