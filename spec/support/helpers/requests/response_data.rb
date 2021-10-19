module Helpers
  module Requests
    module ResponseData
      def json
        @json ||= JSON.parse(response.body)
      end
    end
  end
end