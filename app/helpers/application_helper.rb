# frozen_string_literal: true

module ApplicationHelper
  def bootstrap_class_for(flash_type)
    Constants::Application::BOOTSTRAP_CLASSES[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(_opts = {})
    flash.each do |msg_type, message|
      concat(
        content_tag(:div, message, class: "alert alert-#{bootstrap_class_for(msg_type)} alert-dismissable fade show", role: 'alert') do
          concat content_tag(:button, 'x', class: 'close', data: { dismiss: 'alert' })
          concat message
        end
      )
    end
    nil
  end
end
