# frozen_string_literal: true

module ErrorHelper
  def field_errors(object, field)
    if object.errors
      messages = object.errors.messages
      return messages[field] if messages.key? field
    end
    []
  end
end
