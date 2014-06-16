require "rails/railtie"
require "stack_rescue/action_controller"

class StackRescue
  class Railtie < Rails::Railtie
    config.stack_rescue = ActiveSupport::OrderedOptions.new

    initializer "stack_rescue" do
      ::ActionController::Base.send :include, StackRescue::ActionController
    end
  end
end
