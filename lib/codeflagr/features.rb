module Codeflagr
  class Features < Client

    path 'features'

    # Return all flags for a given features
    def all_flags
      res = get_request 'features'
      if res.status == 200
        JSON.parse(res.body, symbolize_names: true)
      else
        @config.logger.error("[LDClient] Unexpected status code #{res.status}")
        {}
      end
    end
  end
end
