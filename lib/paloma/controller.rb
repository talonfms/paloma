module Paloma
  class Controller

    attr_accessor :resource, :action, :params

    if ::Rails.env.test?
      attr_reader :request_history
    end


    def initialize
      clear_request
    end


    def clear_request
      self.resource = nil
      self.action = nil
      self.params = {}

      true
    end

    def save_request_history
      if ::Rails.env.test?
        @request_history ||= []
        @request_history.push(self.request)
      end
    end

    def request
      { resource: resource, action: action, params: params }
    end


    def has_request?
      resource.present? && action.present?
    end


    def has_no_request?
      !self.has_request?
    end


  end
end
