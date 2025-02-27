# OryKratosClient::IdentityWithCredentialsPasswordConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashed_password** | **String** | The hashed password in [PHC format](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities#hashed-passwords) | [optional] |
| **password** | **String** | The password in plain text if no hash is available. | [optional] |
| **use_password_migration_hook** | **Boolean** | If set to true, the password will be migrated using the password migration hook. | [optional] |

## Example

```ruby
require 'ory-kratos-client'

instance = OryKratosClient::IdentityWithCredentialsPasswordConfig.new(
  hashed_password: null,
  password: null,
  use_password_migration_hook: null
)
```

