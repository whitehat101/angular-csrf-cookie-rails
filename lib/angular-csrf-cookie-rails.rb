require "angular-csrf-cookie-rails/version"
require "angular-csrf-cookie-rails/action_controller"

module AngularCSRFCookieRails
  class Engine < ::Rails::Engine
    initializer "angular-csrf-cookie-rails" do |app|
      ActionController::Base.send :include, AngularCSRFCookieRails::ActionController
      ActionController::Base.send :after_filter, :set_csrf_cookie_for_ng
    end
  end
end
