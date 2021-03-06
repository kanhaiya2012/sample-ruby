# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

# CohesityManagementSdk
module Pepipost
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://api.pepipost.com/v5'

    # Your Pepipost API Key. You will find the api key in the Pepipost application in Integrations.
    @api_key = 'TODO: Replace'

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :base_uri
      attr_accessor :api_key
    end
  end
end
