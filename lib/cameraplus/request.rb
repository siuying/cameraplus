module Cameraplus
  class Request
    include HTTParty

    base_uri "http://camerapl.us"

    format :json

    def initialize(url, options = {})
      @url      = url
      @options  = options
    end

    def response
      request.parsed_response
    end

    private

    def request
      self.class.get(@url, query: @options)
    end

  end
end