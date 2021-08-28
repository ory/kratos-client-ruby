# OryHydraClient::AdminApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_identity**](AdminApi.md#create_identity) | **POST** /identities | Create an Identity |
| [**create_recovery_link**](AdminApi.md#create_recovery_link) | **POST** /recovery/link | Create a Recovery Link |
| [**delete_identity**](AdminApi.md#delete_identity) | **DELETE** /identities/{id} | Delete an Identity |
| [**get_identity**](AdminApi.md#get_identity) | **GET** /identities/{id} | Get an Identity |
| [**get_schema**](AdminApi.md#get_schema) | **GET** /schemas/{id} |  |
| [**get_self_service_error**](AdminApi.md#get_self_service_error) | **GET** /self-service/errors | Get User-Facing Self-Service Errors |
| [**get_self_service_login_flow**](AdminApi.md#get_self_service_login_flow) | **GET** /self-service/login/flows | Get Login Flow |
| [**get_self_service_recovery_flow**](AdminApi.md#get_self_service_recovery_flow) | **GET** /self-service/recovery/flows | Get information about a recovery flow |
| [**get_self_service_registration_flow**](AdminApi.md#get_self_service_registration_flow) | **GET** /self-service/registration/flows | Get Registration Flow |
| [**get_self_service_settings_flow**](AdminApi.md#get_self_service_settings_flow) | **GET** /self-service/settings/flows | Get Settings Flow |
| [**get_self_service_verification_flow**](AdminApi.md#get_self_service_verification_flow) | **GET** /self-service/verification/flows | Get Verification Flow |
| [**get_version**](AdminApi.md#get_version) | **GET** /version | Return Running Software Version. |
| [**is_alive**](AdminApi.md#is_alive) | **GET** /health/alive | Check HTTP Server Status |
| [**is_ready**](AdminApi.md#is_ready) | **GET** /health/ready | Check HTTP Server and Database Status |
| [**list_identities**](AdminApi.md#list_identities) | **GET** /identities | List Identities |
| [**prometheus**](AdminApi.md#prometheus) | **GET** /metrics/prometheus | Get snapshot metrics from the Hydra service. If you&#39;re using k8s, you can then add annotations to your deployment like so: |
| [**update_identity**](AdminApi.md#update_identity) | **PUT** /identities/{id} | Update an Identity |


## create_identity

> <Identity> create_identity(opts)

Create an Identity

This endpoint creates an identity. It is NOT possible to set an identity's credentials (password, ...) using this method! A way to achieve that will be introduced in the future.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
opts = {
  create_identity: OryHydraClient::CreateIdentity.new({schema_id: 'schema_id_example', traits: 3.56}) # CreateIdentity | 
}

begin
  # Create an Identity
  result = api_instance.create_identity(opts)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->create_identity: #{e}"
end
```

#### Using the create_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Identity>, Integer, Hash)> create_identity_with_http_info(opts)

```ruby
begin
  # Create an Identity
  data, status_code, headers = api_instance.create_identity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Identity>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->create_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_identity** | [**CreateIdentity**](CreateIdentity.md) |  | [optional] |

### Return type

[**Identity**](Identity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_recovery_link

> <RecoveryLink> create_recovery_link(opts)

Create a Recovery Link

This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
opts = {
  create_recovery_link: OryHydraClient::CreateRecoveryLink.new({identity_id: 'identity_id_example'}) # CreateRecoveryLink | 
}

begin
  # Create a Recovery Link
  result = api_instance.create_recovery_link(opts)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->create_recovery_link: #{e}"
end
```

#### Using the create_recovery_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecoveryLink>, Integer, Hash)> create_recovery_link_with_http_info(opts)

```ruby
begin
  # Create a Recovery Link
  data, status_code, headers = api_instance.create_recovery_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecoveryLink>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->create_recovery_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_recovery_link** | [**CreateRecoveryLink**](CreateRecoveryLink.md) |  | [optional] |

### Return type

[**RecoveryLink**](RecoveryLink.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_identity

> delete_identity(id)

Delete an Identity

Calling this endpoint irrecoverably and permanently deletes the identity given its ID. This action can not be undone. This endpoint returns 204 when the identity was deleted or when the identity was not found, in which case it is assumed that is has been deleted already.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | ID is the identity's ID.

begin
  # Delete an Identity
  api_instance.delete_identity(id)
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->delete_identity: #{e}"
end
```

#### Using the delete_identity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_identity_with_http_info(id)

```ruby
begin
  # Delete an Identity
  data, status_code, headers = api_instance.delete_identity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->delete_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID is the identity&#39;s ID. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_identity

> <Identity> get_identity(id)

Get an Identity

Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | ID must be set to the ID of identity you want to get

begin
  # Get an Identity
  result = api_instance.get_identity(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_identity: #{e}"
end
```

#### Using the get_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Identity>, Integer, Hash)> get_identity_with_http_info(id)

```ruby
begin
  # Get an Identity
  data, status_code, headers = api_instance.get_identity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Identity>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID must be set to the ID of identity you want to get |  |

### Return type

[**Identity**](Identity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schema

> Object get_schema(id)



Get a Traits Schema Definition

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | ID must be set to the ID of schema you want to get

begin
  
  result = api_instance.get_schema(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_schema: #{e}"
end
```

#### Using the get_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_schema_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_schema_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID must be set to the ID of schema you want to get |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_error

> <SelfServiceErrorContainer> get_self_service_error(error)

Get User-Facing Self-Service Errors

This endpoint returns the error associated with a user-facing self service errors.  This endpoint supports stub values to help you implement the error UI:  `?error=stub:500` - returns a stub 500 (Internal Server Error) error.  More information can be found at [Ory Kratos User User Facing Error Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-facing-errors).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
error = 'error_example' # String | Error is the container's ID

begin
  # Get User-Facing Self-Service Errors
  result = api_instance.get_self_service_error(error)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_error: #{e}"
end
```

#### Using the get_self_service_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SelfServiceErrorContainer>, Integer, Hash)> get_self_service_error_with_http_info(error)

```ruby
begin
  # Get User-Facing Self-Service Errors
  data, status_code, headers = api_instance.get_self_service_error_with_http_info(error)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SelfServiceErrorContainer>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error is the container&#39;s ID |  |

### Return type

[**SelfServiceErrorContainer**](SelfServiceErrorContainer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_login_flow

> <LoginFlow> get_self_service_login_flow(id)

Get Login Flow

This endpoint returns a login flow's context with, for example, error details and other information.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`).

begin
  # Get Login Flow
  result = api_instance.get_self_service_login_flow(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_login_flow: #{e}"
end
```

#### Using the get_self_service_login_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginFlow>, Integer, Hash)> get_self_service_login_flow_with_http_info(id)

```ruby
begin
  # Get Login Flow
  data, status_code, headers = api_instance.get_self_service_login_flow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginFlow>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_login_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Login Flow ID  The value for this parameter comes from &#x60;flow&#x60; URL Query parameter sent to your application (e.g. &#x60;/login?flow&#x3D;abcde&#x60;). |  |

### Return type

[**LoginFlow**](LoginFlow.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_recovery_flow

> <RecoveryFlow> get_self_service_recovery_flow(id)

Get information about a recovery flow

This endpoint returns a recovery flow's context with, for example, error details and other information.  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery.mdx).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`).

begin
  # Get information about a recovery flow
  result = api_instance.get_self_service_recovery_flow(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_recovery_flow: #{e}"
end
```

#### Using the get_self_service_recovery_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecoveryFlow>, Integer, Hash)> get_self_service_recovery_flow_with_http_info(id)

```ruby
begin
  # Get information about a recovery flow
  data, status_code, headers = api_instance.get_self_service_recovery_flow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecoveryFlow>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_recovery_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Flow ID  The value for this parameter comes from &#x60;request&#x60; URL Query parameter sent to your application (e.g. &#x60;/recovery?flow&#x3D;abcde&#x60;). |  |

### Return type

[**RecoveryFlow**](RecoveryFlow.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_registration_flow

> <RegistrationFlow> get_self_service_registration_flow(id)

Get Registration Flow

This endpoint returns a registration flow's context with, for example, error details and other information.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).

begin
  # Get Registration Flow
  result = api_instance.get_self_service_registration_flow(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_registration_flow: #{e}"
end
```

#### Using the get_self_service_registration_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationFlow>, Integer, Hash)> get_self_service_registration_flow_with_http_info(id)

```ruby
begin
  # Get Registration Flow
  data, status_code, headers = api_instance.get_self_service_registration_flow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationFlow>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_registration_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Registration Flow ID  The value for this parameter comes from &#x60;flow&#x60; URL Query parameter sent to your application (e.g. &#x60;/registration?flow&#x3D;abcde&#x60;). |  |

### Return type

[**RegistrationFlow**](RegistrationFlow.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_settings_flow

> <SettingsFlow> get_self_service_settings_flow(id, opts)

Get Settings Flow

When accessing this endpoint through Ory Kratos' Public API you must ensure that either the Ory Kratos Session Cookie or the Ory Kratos Session Token are set. The public endpoint does not return 404 status codes but instead 403 or 500 to improve data privacy.  You can access this endpoint without credentials when using Ory Kratos' Admin API.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'
# setup authorization
OryHydraClient.configure do |config|
  # Configure Bearer authorization: sessionToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | ID is the Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`).
opts = {
  x_session_token: 'x_session_token_example' # String | The Session Token of the Identity performing the settings flow.
}

begin
  # Get Settings Flow
  result = api_instance.get_self_service_settings_flow(id, opts)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_settings_flow: #{e}"
end
```

#### Using the get_self_service_settings_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingsFlow>, Integer, Hash)> get_self_service_settings_flow_with_http_info(id, opts)

```ruby
begin
  # Get Settings Flow
  data, status_code, headers = api_instance.get_self_service_settings_flow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingsFlow>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_settings_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID is the Settings Flow ID  The value for this parameter comes from &#x60;flow&#x60; URL Query parameter sent to your application (e.g. &#x60;/settings?flow&#x3D;abcde&#x60;). |  |
| **x_session_token** | **String** | The Session Token of the Identity performing the settings flow. | [optional] |

### Return type

[**SettingsFlow**](SettingsFlow.md)

### Authorization

[sessionToken](../README.md#sessionToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_service_verification_flow

> <VerificationFlow> get_self_service_verification_flow(id)

Get Verification Flow

This endpoint returns a verification flow's context with, for example, error details and other information.  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`).

begin
  # Get Verification Flow
  result = api_instance.get_self_service_verification_flow(id)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_verification_flow: #{e}"
end
```

#### Using the get_self_service_verification_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationFlow>, Integer, Hash)> get_self_service_verification_flow_with_http_info(id)

```ruby
begin
  # Get Verification Flow
  data, status_code, headers = api_instance.get_self_service_verification_flow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationFlow>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_self_service_verification_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Flow ID  The value for this parameter comes from &#x60;request&#x60; URL Query parameter sent to your application (e.g. &#x60;/verification?flow&#x3D;abcde&#x60;). |  |

### Return type

[**VerificationFlow**](VerificationFlow.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_version

> <InlineResponse2001> get_version

Return Running Software Version.

This endpoint returns the version of Ory Kratos.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of this service, the version will never refer to the cluster state, only to a single instance.

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new

begin
  # Return Running Software Version.
  result = api_instance.get_version
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_version: #{e}"
end
```

#### Using the get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2001>, Integer, Hash)> get_version_with_http_info

```ruby
begin
  # Return Running Software Version.
  data, status_code, headers = api_instance.get_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->get_version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_alive

> <InlineResponse200> is_alive

Check HTTP Server Status

This endpoint returns a HTTP 200 status code when Ory Kratos is accepting incoming HTTP requests. This status does currently not include checks whether the database connection is working.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of this service, the health status will never refer to the cluster state, only to a single instance.

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new

begin
  # Check HTTP Server Status
  result = api_instance.is_alive
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->is_alive: #{e}"
end
```

#### Using the is_alive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> is_alive_with_http_info

```ruby
begin
  # Check HTTP Server Status
  data, status_code, headers = api_instance.is_alive_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->is_alive_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_ready

> <InlineResponse200> is_ready

Check HTTP Server and Database Status

This endpoint returns a HTTP 200 status code when Ory Kratos is up running and the environment dependencies (e.g. the database) are responsive as well.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of Ory Kratos, the health status will never refer to the cluster state, only to a single instance.

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new

begin
  # Check HTTP Server and Database Status
  result = api_instance.is_ready
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->is_ready: #{e}"
end
```

#### Using the is_ready_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> is_ready_with_http_info

```ruby
begin
  # Check HTTP Server and Database Status
  data, status_code, headers = api_instance.is_ready_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->is_ready_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_identities

> <Array<Identity>> list_identities(opts)

List Identities

Lists all identities. Does not support search at the moment.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
opts = {
  per_page: 789, # Integer | Items per Page  This is the number of items per page.
  page: 789 # Integer | Pagination Page
}

begin
  # List Identities
  result = api_instance.list_identities(opts)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->list_identities: #{e}"
end
```

#### Using the list_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Identity>>, Integer, Hash)> list_identities_with_http_info(opts)

```ruby
begin
  # List Identities
  data, status_code, headers = api_instance.list_identities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Identity>>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->list_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** | Items per Page  This is the number of items per page. | [optional][default to 100] |
| **page** | **Integer** | Pagination Page | [optional][default to 0] |

### Return type

[**Array&lt;Identity&gt;**](Identity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## prometheus

> prometheus

Get snapshot metrics from the Hydra service. If you're using k8s, you can then add annotations to your deployment like so:

``` metadata: annotations: prometheus.io/port: \"4434\" prometheus.io/path: \"/metrics/prometheus\" ```

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new

begin
  # Get snapshot metrics from the Hydra service. If you're using k8s, you can then add annotations to your deployment like so:
  api_instance.prometheus
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->prometheus: #{e}"
end
```

#### Using the prometheus_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prometheus_with_http_info

```ruby
begin
  # Get snapshot metrics from the Hydra service. If you're using k8s, you can then add annotations to your deployment like so:
  data, status_code, headers = api_instance.prometheus_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->prometheus_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_identity

> <Identity> update_identity(id, opts)

Update an Identity

This endpoint updates an identity. It is NOT possible to set an identity's credentials (password, ...) using this method! A way to achieve that will be introduced in the future.  The full identity payload (except credentials) is expected. This endpoint does not support patching.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryHydraClient::AdminApi.new
id = 'id_example' # String | ID must be set to the ID of identity you want to update
opts = {
  update_identity: OryHydraClient::UpdateIdentity.new({traits: 3.56}) # UpdateIdentity | 
}

begin
  # Update an Identity
  result = api_instance.update_identity(id, opts)
  p result
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->update_identity: #{e}"
end
```

#### Using the update_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Identity>, Integer, Hash)> update_identity_with_http_info(id, opts)

```ruby
begin
  # Update an Identity
  data, status_code, headers = api_instance.update_identity_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Identity>
rescue OryHydraClient::ApiError => e
  puts "Error when calling AdminApi->update_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID must be set to the ID of identity you want to update |  |
| **update_identity** | [**UpdateIdentity**](UpdateIdentity.md) |  | [optional] |

### Return type

[**Identity**](Identity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

