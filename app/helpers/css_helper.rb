# frozen_string_literal: true

module CssHelper
  def class_name(css_map)
    css_map.find_all(&:last).map(&:first).join(' ')
  end
end
