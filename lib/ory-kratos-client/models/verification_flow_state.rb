=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.3.8
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OryKratosClient
  class VerificationFlowState
    CHOOSE_METHOD = "choose_method".freeze
    SENT_EMAIL = "sent_email".freeze
    PASSED_CHALLENGE = "passed_challenge".freeze

    def self.all_vars
      @all_vars ||= [CHOOSE_METHOD, SENT_EMAIL, PASSED_CHALLENGE].freeze
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
      return value if VerificationFlowState.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #VerificationFlowState"
    end
  end
end
