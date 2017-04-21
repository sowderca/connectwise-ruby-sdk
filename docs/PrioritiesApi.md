# ConnectWise::PrioritiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_priorities_count_get**](PrioritiesApi.md#service_priorities_count_get) | **GET** /service/priorities/count | 
[**service_priorities_get**](PrioritiesApi.md#service_priorities_get) | **GET** /service/priorities | 
[**service_priorities_id_delete**](PrioritiesApi.md#service_priorities_id_delete) | **DELETE** /service/priorities/{id} | 
[**service_priorities_id_get**](PrioritiesApi.md#service_priorities_id_get) | **GET** /service/priorities/{id} | 
[**service_priorities_id_image_get**](PrioritiesApi.md#service_priorities_id_image_get) | **GET** /service/priorities/{id}/image | 
[**service_priorities_id_patch**](PrioritiesApi.md#service_priorities_id_patch) | **PATCH** /service/priorities/{id} | 
[**service_priorities_id_put**](PrioritiesApi.md#service_priorities_id_put) | **PUT** /service/priorities/{id} | 
[**service_priorities_post**](PrioritiesApi.md#service_priorities_post) | **POST** /service/priorities | 


# **service_priorities_count_get**
> Count service_priorities_count_get(opts)



Create Priorities Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.service_priorities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_count_get: #{e}"
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



# **service_priorities_get**
> Array&lt;Priority&gt; service_priorities_get(opts)



Get Priorities

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_priorities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Priority&gt;**](Priority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_priorities_id_delete**
> service_priorities_id_delete(id)



Delete Priority By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

id = 56 # Integer | 


begin
  api_instance.service_priorities_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_id_delete: #{e}"
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



# **service_priorities_id_get**
> Priority service_priorities_id_get(id)



Get Priority By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_priorities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Priority**](Priority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_priorities_id_image_get**
> service_priorities_id_image_get(id, opts)



Get Priority Image

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

id = 56 # Integer | 

opts = { 
  use_default_flag: true, # BOOLEAN | 
  last_modified: "last_modified_example" # String | 
}

begin
  api_instance.service_priorities_id_image_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_id_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **use_default_flag** | **BOOLEAN**|  | [optional] 
 **last_modified** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **service_priorities_id_patch**
> Priority service_priorities_id_patch(id, operations)



Update Priority

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_priorities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Priority**](Priority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_priorities_id_put**
> Priority service_priorities_id_put(id, priority)



Replace Priority

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

id = 56 # Integer | 

priority = ConnectWise::Priority.new # Priority | 


begin
  result = api_instance.service_priorities_id_put(id, priority)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **priority** | [**Priority**](Priority.md)|  | 

### Return type

[**Priority**](Priority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_priorities_post**
> Priority service_priorities_post(priority)



Create Priority

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::PrioritiesApi.new

priority = ConnectWise::Priority.new # Priority | 


begin
  result = api_instance.service_priorities_post(priority)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PrioritiesApi->service_priorities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priority** | [**Priority**](Priority.md)|  | 

### Return type

[**Priority**](Priority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



