=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.1.0
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryKratosClient
  module ContinueWith
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'ContinueWithRecoveryUi',
          :'ContinueWithSetOrySessionToken',
          :'ContinueWithSettingsUi',
          :'ContinueWithVerificationUi'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'action'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'set_ory_session_token' => :'ContinueWithSetOrySessionToken',
          :'show_recovery_ui' => :'ContinueWithRecoveryUi',
          :'show_settings_ui' => :'ContinueWithSettingsUi',
          :'show_verification_ui' => :'ContinueWithVerificationUi'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        OryKratosClient.const_get(klass).build_from_hash(data)
      end
    end
  end

end
