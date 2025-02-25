=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.3.6
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OryKratosClient
  class CourierMessageStatus
    QUEUED = "queued".freeze
    SENT = "sent".freeze
    PROCESSING = "processing".freeze
    ABANDONED = "abandoned".freeze

    def self.all_vars
      @all_vars ||= [QUEUED, SENT, PROCESSING, ABANDONED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if CourierMessageStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CourierMessageStatus"
    end
  end
end
