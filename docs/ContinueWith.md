# OryKratosClient::ContinueWith

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'ory-kratos-client'

OryKratosClient::ContinueWith.openapi_one_of
# =>
# [
#   :'ContinueWithRecoveryUi',
#   :'ContinueWithRedirectBrowserTo',
#   :'ContinueWithSetOrySessionToken',
#   :'ContinueWithSettingsUi',
#   :'ContinueWithVerificationUi'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'ory-kratos-client'

OryKratosClient::ContinueWith.openapi_discriminator_name
# => :'action'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'ory-kratos-client'

OryKratosClient::ContinueWith.openapi_discriminator_mapping
# =>
# {
#   :'redirect_browser_to' => :'ContinueWithRedirectBrowserTo',
#   :'set_ory_session_token' => :'ContinueWithSetOrySessionToken',
#   :'show_recovery_ui' => :'ContinueWithRecoveryUi',
#   :'show_settings_ui' => :'ContinueWithSettingsUi',
#   :'show_verification_ui' => :'ContinueWithVerificationUi'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'ory-kratos-client'

OryKratosClient::ContinueWith.build(data)
# => #<ContinueWithRecoveryUi:0x00007fdd4aab02a0>

OryKratosClient::ContinueWith.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ContinueWithRecoveryUi`
- `ContinueWithRedirectBrowserTo`
- `ContinueWithSetOrySessionToken`
- `ContinueWithSettingsUi`
- `ContinueWithVerificationUi`
- `nil` (if no type matches)

