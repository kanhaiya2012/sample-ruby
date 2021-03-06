# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  # To, CC  and Bcc email Address structure
  class EmailStruct < BaseModel
    # Name of recipient
    # @return [String]
    attr_accessor :name

    # Email of recipient
    # @return [String]
    attr_accessor :email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash
    end

    def initialize(name = nil,
                   email = nil)
      @name = name
      @email = email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      email = hash['email']

      # Create object from extracted values.
      EmailStruct.new(name,
                      email)
    end
  end
end
