module Paloma
  module TestHelper
    def js_params
      @js_params ||= @controller.send(:paloma).request_history.last[:params]
    end
  end
end
