# frozen_string_literal: true

# Helper of enum select fields
module EnumHelper
  def self.translated_options(enum, property_name)
    enum.map { |key,value| [I18n.t("activerecord.attributes.shared.#{property_name}.#{key}"), value] }
  end
end