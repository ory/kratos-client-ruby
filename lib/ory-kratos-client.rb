=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.2.1
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

# Common files
require 'ory-kratos-client/api_client'
require 'ory-kratos-client/api_error'
require 'ory-kratos-client/version'
require 'ory-kratos-client/configuration'

# Models
require 'ory-kratos-client/models/authenticator_assurance_level'
require 'ory-kratos-client/models/batch_patch_identities_response'
require 'ory-kratos-client/models/consistency_request_parameters'
require 'ory-kratos-client/models/continue_with'
require 'ory-kratos-client/models/continue_with_recovery_ui'
require 'ory-kratos-client/models/continue_with_recovery_ui_flow'
require 'ory-kratos-client/models/continue_with_set_ory_session_token'
require 'ory-kratos-client/models/continue_with_settings_ui'
require 'ory-kratos-client/models/continue_with_settings_ui_flow'
require 'ory-kratos-client/models/continue_with_verification_ui'
require 'ory-kratos-client/models/continue_with_verification_ui_flow'
require 'ory-kratos-client/models/courier_message_status'
require 'ory-kratos-client/models/courier_message_type'
require 'ory-kratos-client/models/create_identity_body'
require 'ory-kratos-client/models/create_recovery_code_for_identity_body'
require 'ory-kratos-client/models/create_recovery_link_for_identity_body'
require 'ory-kratos-client/models/delete_my_sessions_count'
require 'ory-kratos-client/models/error_authenticator_assurance_level_not_satisfied'
require 'ory-kratos-client/models/error_browser_location_change_required'
require 'ory-kratos-client/models/error_flow_replaced'
require 'ory-kratos-client/models/error_generic'
require 'ory-kratos-client/models/flow_error'
require 'ory-kratos-client/models/generic_error'
require 'ory-kratos-client/models/get_version200_response'
require 'ory-kratos-client/models/health_not_ready_status'
require 'ory-kratos-client/models/health_status'
require 'ory-kratos-client/models/identity'
require 'ory-kratos-client/models/identity_credentials'
require 'ory-kratos-client/models/identity_credentials_code'
require 'ory-kratos-client/models/identity_credentials_oidc'
require 'ory-kratos-client/models/identity_credentials_oidc_provider'
require 'ory-kratos-client/models/identity_credentials_password'
require 'ory-kratos-client/models/identity_patch'
require 'ory-kratos-client/models/identity_patch_response'
require 'ory-kratos-client/models/identity_schema_container'
require 'ory-kratos-client/models/identity_with_credentials'
require 'ory-kratos-client/models/identity_with_credentials_oidc'
require 'ory-kratos-client/models/identity_with_credentials_oidc_config'
require 'ory-kratos-client/models/identity_with_credentials_oidc_config_provider'
require 'ory-kratos-client/models/identity_with_credentials_password'
require 'ory-kratos-client/models/identity_with_credentials_password_config'
require 'ory-kratos-client/models/is_alive200_response'
require 'ory-kratos-client/models/is_ready503_response'
require 'ory-kratos-client/models/json_patch'
require 'ory-kratos-client/models/login_flow'
require 'ory-kratos-client/models/login_flow_state'
require 'ory-kratos-client/models/logout_flow'
require 'ory-kratos-client/models/message'
require 'ory-kratos-client/models/message_dispatch'
require 'ory-kratos-client/models/needs_privileged_session_error'
require 'ory-kratos-client/models/o_auth2_client'
require 'ory-kratos-client/models/o_auth2_consent_request_open_id_connect_context'
require 'ory-kratos-client/models/o_auth2_login_request'
require 'ory-kratos-client/models/patch_identities_body'
require 'ory-kratos-client/models/perform_native_logout_body'
require 'ory-kratos-client/models/recovery_code_for_identity'
require 'ory-kratos-client/models/recovery_flow'
require 'ory-kratos-client/models/recovery_flow_state'
require 'ory-kratos-client/models/recovery_identity_address'
require 'ory-kratos-client/models/recovery_link_for_identity'
require 'ory-kratos-client/models/registration_flow'
require 'ory-kratos-client/models/registration_flow_state'
require 'ory-kratos-client/models/self_service_flow_expired_error'
require 'ory-kratos-client/models/session'
require 'ory-kratos-client/models/session_authentication_method'
require 'ory-kratos-client/models/session_device'
require 'ory-kratos-client/models/settings_flow'
require 'ory-kratos-client/models/settings_flow_state'
require 'ory-kratos-client/models/successful_code_exchange_response'
require 'ory-kratos-client/models/successful_native_login'
require 'ory-kratos-client/models/successful_native_registration'
require 'ory-kratos-client/models/token_pagination'
require 'ory-kratos-client/models/token_pagination_headers'
require 'ory-kratos-client/models/ui_container'
require 'ory-kratos-client/models/ui_node'
require 'ory-kratos-client/models/ui_node_anchor_attributes'
require 'ory-kratos-client/models/ui_node_attributes'
require 'ory-kratos-client/models/ui_node_image_attributes'
require 'ory-kratos-client/models/ui_node_input_attributes'
require 'ory-kratos-client/models/ui_node_meta'
require 'ory-kratos-client/models/ui_node_script_attributes'
require 'ory-kratos-client/models/ui_node_text_attributes'
require 'ory-kratos-client/models/ui_text'
require 'ory-kratos-client/models/update_identity_body'
require 'ory-kratos-client/models/update_login_flow_body'
require 'ory-kratos-client/models/update_login_flow_with_code_method'
require 'ory-kratos-client/models/update_login_flow_with_lookup_secret_method'
require 'ory-kratos-client/models/update_login_flow_with_oidc_method'
require 'ory-kratos-client/models/update_login_flow_with_passkey_method'
require 'ory-kratos-client/models/update_login_flow_with_password_method'
require 'ory-kratos-client/models/update_login_flow_with_totp_method'
require 'ory-kratos-client/models/update_login_flow_with_web_authn_method'
require 'ory-kratos-client/models/update_recovery_flow_body'
require 'ory-kratos-client/models/update_recovery_flow_with_code_method'
require 'ory-kratos-client/models/update_recovery_flow_with_link_method'
require 'ory-kratos-client/models/update_registration_flow_body'
require 'ory-kratos-client/models/update_registration_flow_with_code_method'
require 'ory-kratos-client/models/update_registration_flow_with_oidc_method'
require 'ory-kratos-client/models/update_registration_flow_with_passkey_method'
require 'ory-kratos-client/models/update_registration_flow_with_password_method'
require 'ory-kratos-client/models/update_registration_flow_with_profile_method'
require 'ory-kratos-client/models/update_registration_flow_with_web_authn_method'
require 'ory-kratos-client/models/update_settings_flow_body'
require 'ory-kratos-client/models/update_settings_flow_with_lookup_method'
require 'ory-kratos-client/models/update_settings_flow_with_oidc_method'
require 'ory-kratos-client/models/update_settings_flow_with_passkey_method'
require 'ory-kratos-client/models/update_settings_flow_with_password_method'
require 'ory-kratos-client/models/update_settings_flow_with_profile_method'
require 'ory-kratos-client/models/update_settings_flow_with_totp_method'
require 'ory-kratos-client/models/update_settings_flow_with_web_authn_method'
require 'ory-kratos-client/models/update_verification_flow_body'
require 'ory-kratos-client/models/update_verification_flow_with_code_method'
require 'ory-kratos-client/models/update_verification_flow_with_link_method'
require 'ory-kratos-client/models/verifiable_identity_address'
require 'ory-kratos-client/models/verification_flow'
require 'ory-kratos-client/models/verification_flow_state'
require 'ory-kratos-client/models/version'

# APIs
require 'ory-kratos-client/api/courier_api'
require 'ory-kratos-client/api/frontend_api'
require 'ory-kratos-client/api/identity_api'
require 'ory-kratos-client/api/metadata_api'

module OryKratosClient
  class << self
    # Customize default settings for the SDK using block.
    #   OryKratosClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
