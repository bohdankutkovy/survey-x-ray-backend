module Helpers
  module Requests
    module ResponseData
      def json
        @json ||= JSON.parse(response.body).with_indifferent_access
      end
    end
  end
end