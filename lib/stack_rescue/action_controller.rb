require "action_controller/railtie"
require "google-search"
require "colorize"

class StackRescue
  module ActionController
    extend ActiveSupport::Concern

    included do
      rescue_from StandardError, :with => :stack_rescue_helper
    end

    private

    def stack_rescue_helper(exception)
      Rails.logger.debug "\nRelated errors to '#{exception}' on :\n".red
      Rails.logger.debug StackRescue.new(exception, Rails.configuration.stack_rescue)
      raise exception
    end
  end
end
