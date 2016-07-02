module Codeflagr
  class Config
    def initialize(base_uri, api_version)
      @base_uri = base_uri
      @api_version = api_version
    end

    def base_uri
      @base_uri
    end

    def api_version
      @api_version
    end

    def self.default
      Config.new('http://service.features.codeflager.dev/', 'v1')
    end
  end
end
