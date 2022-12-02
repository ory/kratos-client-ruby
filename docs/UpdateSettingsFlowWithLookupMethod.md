# OryKratosClient::UpdateSettingsFlowWithLookupMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **csrf_token** | **String** | CSRFToken is the anti-CSRF token | [optional] |
| **lookup_secret_confirm** | **Boolean** | If set to true will save the regenerated lookup secrets | [optional] |
| **lookup_secret_disable** | **Boolean** | Disables this method if true. | [optional] |
| **lookup_secret_regenerate** | **Boolean** | If set to true will regenerate the lookup secrets | [optional] |
| **lookup_secret_reveal** | **Boolean** | If set to true will reveal the lookup secrets | [optional] |
| **method** | **String** | Method  Should be set to \&quot;lookup\&quot; when trying to add, update, or remove a lookup pairing. |  |

## Example

```ruby
require 'ory-kratos-client'

instance = OryKratosClient::UpdateSettingsFlowWithLookupMethod.new(
  csrf_token: null,
  lookup_secret_confirm: null,
  lookup_secret_disable: null,
  lookup_secret_regenerate: null,
  lookup_secret_reveal: null,
  method: null
)
```

