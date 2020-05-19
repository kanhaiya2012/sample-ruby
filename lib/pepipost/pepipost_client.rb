# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  #  pepipost client class.
  class PepipostClient
    # Singleton access to send controller.
    # @return [SendController] Returns the controller instance.
    def send
      SendController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(api_key: '4D51B3ECA2D4ED3A67E4E043B3F1A4D1')
      Configuration.api_key = api_key if
        api_key
    end
  end
end
