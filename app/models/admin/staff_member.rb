# frozen_string_literal: true

module Admin
  class StaffMember < ApplicationRecord
    validates :first_name, :last_name, :nickname, presence: true

    def full_name
      "#{first_name} #{nickname} #{last_name}"
    end
  end
end
