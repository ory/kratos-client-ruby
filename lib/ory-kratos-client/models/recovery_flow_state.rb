=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v0.13.1
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryKratosClient
  class RecoveryFlowState
    CHOOSE_METHOD = "choose_method".freeze
    SENT_EMAIL = "sent_email".freeze
    PASSED_CHALLENGE = "passed_challenge".freeze

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
      constantValues = RecoveryFlowState.constants.select { |c| RecoveryFlowState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RecoveryFlowState" if constantValues.empty?
      value
    end
  end
end
