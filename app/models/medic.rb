# frozen_string_literal: true

# Medic entity model
class Medic < ApplicationRecord
  include HasConfirmationStatus

  before_create :set_default_status
  validates :name, :crm, :phone, :email, presence: true

  def set_default_status
    self.status = 'pending'
  end
end
