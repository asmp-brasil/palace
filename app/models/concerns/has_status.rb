# frozen_string_literal: true

# Status enum provider concern
module HasStatus
  extend ActiveSupport::Concern
  included do
    enum status: { approved: 'approved', rejected: 'rejected', pending: 'pending' }
  end
end
