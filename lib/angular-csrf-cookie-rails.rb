require "angular-csrf-cookie-rails/version"
require "angular-csrf-cookie-rails/action_controller"

module AngularCSRFCookieRails
  class Engine < ::Rails::Engine
    initializer "angular-csrf-cookie-rails" do |app|
      ActionController::Base.send :include, AngularCSRFCookieRails::ActionController
    end
  end
end
