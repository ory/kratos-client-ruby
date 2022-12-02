# OryKratosClient::UpdateRegistrationFlowWithPasswordMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **csrf_token** | **String** | The CSRF Token | [optional] |
| **method** | **String** | Method to use  This field must be set to &#x60;password&#x60; when using the password method. |  |
| **password** | **String** | Password to sign the user up with |  |
| **traits** | **Object** | The identity&#39;s traits |  |

## Example

```ruby
require 'ory-kratos-client'

instance = OryKratosClient::UpdateRegistrationFlowWithPasswordMethod.new(
  csrf_token: null,
  method: null,
  password: null,
  traits: null
)
```

