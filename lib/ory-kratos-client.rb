=begin
#Ory Kratos API

#Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 

The version of the OpenAPI document: v0.7.3-alpha.4
Contact: hi@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

# Common files
require 'ory-kratos-client/api_client'
require 'ory-kratos-client/api_error'
require 'ory-kratos-client/version'
require 'ory-kratos-client/configuration'

# Models
require 'ory-kratos-client/models/admin_create_identity_body'
require 'ory-kratos-client/models/admin_create_self_service_recovery_link_body'
require 'ory-kratos-client/models/admin_update_identity_body'
require 'ory-kratos-client/models/authenticate_ok_body'
require 'ory-kratos-client/models/container_change_response_item'
require 'ory-kratos-client/models/container_create_created_body'
require 'ory-kratos-client/models/container_top_ok_body'
require 'ory-kratos-client/models/container_update_ok_body'
require 'ory-kratos-client/models/container_wait_ok_body'
require 'ory-kratos-client/models/container_wait_ok_body_error'
require 'ory-kratos-client/models/error_response'
require 'ory-kratos-client/models/generic_error'
require 'ory-kratos-client/models/graph_driver_data'
require 'ory-kratos-client/models/health_not_ready_status'
require 'ory-kratos-client/models/health_status'
require 'ory-kratos-client/models/id_response'
require 'ory-kratos-client/models/identity'
require 'ory-kratos-client/models/identity_credentials'
require 'ory-kratos-client/models/identity_state'
require 'ory-kratos-client/models/image_delete_response_item'
require 'ory-kratos-client/models/image_summary'
require 'ory-kratos-client/models/inline_response200'
require 'ory-kratos-client/models/inline_response2001'
require 'ory-kratos-client/models/inline_response503'
require 'ory-kratos-client/models/json_error'
require 'ory-kratos-client/models/meta'
require 'ory-kratos-client/models/plugin'
require 'ory-kratos-client/models/plugin_config'
require 'ory-kratos-client/models/plugin_config_args'
require 'ory-kratos-client/models/plugin_config_interface'
require 'ory-kratos-client/models/plugin_config_linux'
require 'ory-kratos-client/models/plugin_config_network'
require 'ory-kratos-client/models/plugin_config_rootfs'
require 'ory-kratos-client/models/plugin_config_user'
require 'ory-kratos-client/models/plugin_device'
require 'ory-kratos-client/models/plugin_env'
require 'ory-kratos-client/models/plugin_interface_type'
require 'ory-kratos-client/models/plugin_mount'
require 'ory-kratos-client/models/plugin_settings'
require 'ory-kratos-client/models/port'
require 'ory-kratos-client/models/recovery_address'
require 'ory-kratos-client/models/self_service_error'
require 'ory-kratos-client/models/self_service_login_flow'
require 'ory-kratos-client/models/self_service_logout_url'
require 'ory-kratos-client/models/self_service_recovery_flow'
require 'ory-kratos-client/models/self_service_recovery_flow_state'
require 'ory-kratos-client/models/self_service_recovery_link'
require 'ory-kratos-client/models/self_service_registration_flow'
require 'ory-kratos-client/models/self_service_settings_flow'
require 'ory-kratos-client/models/self_service_settings_flow_state'
require 'ory-kratos-client/models/self_service_verification_flow'
require 'ory-kratos-client/models/self_service_verification_flow_state'
require 'ory-kratos-client/models/service_update_response'
require 'ory-kratos-client/models/session'
require 'ory-kratos-client/models/settings_profile_form_config'
require 'ory-kratos-client/models/submit_self_service_login_flow_body'
require 'ory-kratos-client/models/submit_self_service_login_flow_with_oidc_method_body'
require 'ory-kratos-client/models/submit_self_service_login_flow_with_password_method_body'
require 'ory-kratos-client/models/submit_self_service_logout_flow_without_browser_body'
require 'ory-kratos-client/models/submit_self_service_recovery_flow_body'
require 'ory-kratos-client/models/submit_self_service_recovery_flow_with_link_method_body'
require 'ory-kratos-client/models/submit_self_service_registration_flow_body'
require 'ory-kratos-client/models/submit_self_service_registration_flow_with_oidc_method_body'
require 'ory-kratos-client/models/submit_self_service_registration_flow_with_password_method_body'
require 'ory-kratos-client/models/submit_self_service_settings_flow_body'
require 'ory-kratos-client/models/submit_self_service_settings_flow_with_oidc_method_body'
require 'ory-kratos-client/models/submit_self_service_settings_flow_with_password_method_body'
require 'ory-kratos-client/models/submit_self_service_settings_flow_with_profile_method_body'
require 'ory-kratos-client/models/submit_self_service_verification_flow_body'
require 'ory-kratos-client/models/submit_self_service_verification_flow_with_link_method_body'
require 'ory-kratos-client/models/successful_self_service_login_without_browser'
require 'ory-kratos-client/models/successful_self_service_registration_without_browser'
require 'ory-kratos-client/models/successful_self_service_settings_without_browser'
require 'ory-kratos-client/models/ui_container'
require 'ory-kratos-client/models/ui_node'
require 'ory-kratos-client/models/ui_node_anchor_attributes'
require 'ory-kratos-client/models/ui_node_attributes'
require 'ory-kratos-client/models/ui_node_image_attributes'
require 'ory-kratos-client/models/ui_node_input_attributes'
require 'ory-kratos-client/models/ui_node_text_attributes'
require 'ory-kratos-client/models/ui_text'
require 'ory-kratos-client/models/verifiable_identity_address'
require 'ory-kratos-client/models/version'
require 'ory-kratos-client/models/volume'
require 'ory-kratos-client/models/volume_usage_data'

# APIs
require 'ory-kratos-client/api/metadata_api'
require 'ory-kratos-client/api/v0alpha1_api'

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
