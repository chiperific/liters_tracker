# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  include ApplicationHelper
  include ErrorHandler
  protect_from_forgery with: :exception
end
