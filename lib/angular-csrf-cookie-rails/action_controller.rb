module AngularCSRFCookieRails
  module ActionController
    def self.included klass
      klass.after_filter :set_csrf_cookie_for_ng
    end

    def set_csrf_cookie_for_ng
      cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
    end

  protected

    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end
  end
end
