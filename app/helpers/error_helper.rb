# frozen_string_literal: true

module ErrorHelper
  def has_error?(model, field)
    return model.errors.messages.key? field && !model.errors.messages[field].empty? if model.errors

    false
  end

  def field_errors(object, field)
    if object.errors
      messages = object.errors.messages
      return messages[field] if messages.key? field
    end
    []
  end
end
