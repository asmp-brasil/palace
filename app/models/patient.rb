# frozen_string_literal: true

# Patient entity model
class Patient < ApplicationRecord
  include HasStatus

  before_create :set_default_status
  validates :name, :crm, :phone, :email, presence: true

  enum

  def set_default_status
    self.status = HasStatus.status.pending
  end
end
