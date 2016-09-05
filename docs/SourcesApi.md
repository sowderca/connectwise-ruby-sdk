# Connectwise::SourcesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_sources_count_get**](SourcesApi.md#service_sources_count_get) | **GET** /service/sources/count | 
[**service_sources_get**](SourcesApi.md#service_sources_get) | **GET** /service/sources | 
[**service_sources_id_delete**](SourcesApi.md#service_sources_id_delete) | **DELETE** /service/sources/{id} | 
[**service_sources_id_get**](SourcesApi.md#service_sources_id_get) | **GET** /service/sources/{id} | 
[**service_sources_id_patch**](SourcesApi.md#service_sources_id_patch) | **PATCH** /service/sources/{id} | 
[**service_sources_id_put**](SourcesApi.md#service_sources_id_put) | **PUT** /service/sources/{id} | 
[**service_sources_post**](SourcesApi.md#service_sources_post) | **POST** /service/sources | 


# **service_sources_count_get**
> Count service_sources_count_get(opts)



Create Sources Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_sources_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sources_get**
> Array&lt;Source&gt; service_sources_get(opts)



Get Sources

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_sources_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Source&gt;**](Source.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sources_id_delete**
> service_sources_id_delete(id)



Delete Source By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

id = 56 # Integer | 


begin
  api_instance.service_sources_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_sources_id_get**
> Source service_sources_id_get(id)



Get Source By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_sources_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Source**](Source.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sources_id_patch**
> Source service_sources_id_patch(id, operations)



Update Source

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_sources_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Source**](Source.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sources_id_put**
> Source service_sources_id_put(id, source)



Replace Source

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

id = 56 # Integer | 

source = Connectwise::Source.new # Source | 


begin
  result = api_instance.service_sources_id_put(id, source)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **source** | [**Source**](Source.md)|  | 

### Return type

[**Source**](Source.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sources_post**
> Source service_sources_post(source)



Create Source

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SourcesApi.new

source = Connectwise::Source.new # Source | 


begin
  result = api_instance.service_sources_post(source)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SourcesApi->service_sources_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | [**Source**](Source.md)|  | 

### Return type

[**Source**](Source.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



