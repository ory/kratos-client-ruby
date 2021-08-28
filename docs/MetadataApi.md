# OryKratosClient::MetadataApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_version**](MetadataApi.md#get_version) | **GET** /version | Return Running Software Version. |
| [**is_alive**](MetadataApi.md#is_alive) | **GET** /health/alive | Check HTTP Server Status |
| [**is_ready**](MetadataApi.md#is_ready) | **GET** /health/ready | Check HTTP Server and Database Status |
| [**prometheus**](MetadataApi.md#prometheus) | **GET** /metrics/prometheus | Get snapshot metrics from the service. If you&#39;re using k8s, you can then add annotations to your deployment like so: |


## get_version

> <InlineResponse2001> get_version

Return Running Software Version.

This endpoint returns the version of Ory Kratos.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of this service, the version will never refer to the cluster state, only to a single instance.

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryKratosClient::MetadataApi.new

begin
  # Return Running Software Version.
  result = api_instance.get_version
  p result
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->get_version: #{e}"
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
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->get_version_with_http_info: #{e}"
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

api_instance = OryKratosClient::MetadataApi.new

begin
  # Check HTTP Server Status
  result = api_instance.is_alive
  p result
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->is_alive: #{e}"
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
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->is_alive_with_http_info: #{e}"
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

api_instance = OryKratosClient::MetadataApi.new

begin
  # Check HTTP Server and Database Status
  result = api_instance.is_ready
  p result
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->is_ready: #{e}"
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
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->is_ready_with_http_info: #{e}"
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


## prometheus

> prometheus

Get snapshot metrics from the service. If you're using k8s, you can then add annotations to your deployment like so:

``` metadata: annotations: prometheus.io/port: \"4434\" prometheus.io/path: \"/metrics/prometheus\" ```

### Examples

```ruby
require 'time'
require 'ory-kratos-client'

api_instance = OryKratosClient::MetadataApi.new

begin
  # Get snapshot metrics from the service. If you're using k8s, you can then add annotations to your deployment like so:
  api_instance.prometheus
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->prometheus: #{e}"
end
```

#### Using the prometheus_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prometheus_with_http_info

```ruby
begin
  # Get snapshot metrics from the service. If you're using k8s, you can then add annotations to your deployment like so:
  data, status_code, headers = api_instance.prometheus_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OryKratosClient::ApiError => e
  puts "Error when calling MetadataApi->prometheus_with_http_info: #{e}"
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

