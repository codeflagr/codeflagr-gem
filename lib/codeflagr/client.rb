require 'faraday'
require 'json'

module Codeflagr
  class Client
    def initialize(api_key, config = Config.default)
      @api_key = api_key
      @config = config
      @client = Faraday.new(url: @config.base_uri + '/' + @config.api_version) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

    def get_request(path)
      @client.get (path) do |req|
        req.headers['Authorization'] = 'api_key ' + @api_key
        req.headers['User-Agent'] = 'RubyClient/' + Codeflagr::VERSION
      end
    end

    def post_request(path)
      @client.post (path) do |req|
        req.headers['Authorization'] = 'api_key ' + @api_key
        req.headers['User-Agent'] = 'RubyClient/' + Codeflagr::VERSION
      end
    end

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
