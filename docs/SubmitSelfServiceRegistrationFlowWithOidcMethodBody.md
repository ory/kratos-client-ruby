# OryKratosClient::SubmitSelfServiceRegistrationFlowWithOidcMethodBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **csrf_token** | **String** | The CSRF Token | [optional] |
| **method** | **String** | Method to use  This field must be set to &#x60;oidc&#x60; when using the oidc method. |  |
| **provider** | **String** | The provider to register with |  |
| **traits** | **Object** | The identity traits | [optional] |

## Example

```ruby
require 'ory-kratos-client'

instance = OryKratosClient::SubmitSelfServiceRegistrationFlowWithOidcMethodBody.new(
  csrf_token: null,
  method: null,
  provider: null,
  traits: null
)
```

