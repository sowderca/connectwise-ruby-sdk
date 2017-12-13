# ConnectWise::SLAPrioritiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_sl_as_id_priorities_count_get**](SLAPrioritiesApi.md#service_sl_as_id_priorities_count_get) | **GET** /service/SLAs/{id}/priorities/count | 
[**service_sl_as_id_priorities_get**](SLAPrioritiesApi.md#service_sl_as_id_priorities_get) | **GET** /service/SLAs/{id}/priorities | 
[**service_sl_as_id_priorities_post**](SLAPrioritiesApi.md#service_sl_as_id_priorities_post) | **POST** /service/SLAs/{id}/priorities | 
[**service_sl_as_id_priorities_priority_id_delete**](SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_delete) | **DELETE** /service/SLAs/{id}/priorities/{priorityId} | 
[**service_sl_as_id_priorities_priority_id_get**](SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_get) | **GET** /service/SLAs/{id}/priorities/{priorityId} | 
[**service_sl_as_id_priorities_priority_id_patch**](SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_patch) | **PATCH** /service/SLAs/{id}/priorities/{priorityId} | 
[**service_sl_as_id_priorities_priority_id_put**](SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_put) | **PUT** /service/SLAs/{id}/priorities/{priorityId} | 


# **service_sl_as_id_priorities_count_get**
> Count service_sl_as_id_priorities_count_get(id, opts)



Get S L A Priority Count

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_sl_as_id_priorities_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sl_as_id_priorities_get**
> Array&lt;SLAPriority&gt; service_sl_as_id_priorities_get(id, opts)



Get S L A Priority

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_sl_as_id_priorities_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;SLAPriority&gt;**](SLAPriority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sl_as_id_priorities_post**
> SLAPriority service_sl_as_id_priorities_post(id, sla_priority)



Create S L A Priority

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

sla_priority = ConnectWise::SLAPriority.new # SLAPriority | 


begin
  result = api_instance.service_sl_as_id_priorities_post(id, sla_priority)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sla_priority** | [**SLAPriority**](SLAPriority.md)|  | 

### Return type

[**SLAPriority**](SLAPriority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sl_as_id_priorities_priority_id_delete**
> service_sl_as_id_priorities_priority_id_delete(id, priority_id)



Delete S L A Priority By Id

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

priority_id = 56 # Integer | 


begin
  api_instance.service_sl_as_id_priorities_priority_id_delete(id, priority_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_priority_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **priority_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_sl_as_id_priorities_priority_id_get**
> SLAPriority service_sl_as_id_priorities_priority_id_get(id, priority_id)



Get S L A Priority By Id

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

priority_id = 56 # Integer | 


begin
  result = api_instance.service_sl_as_id_priorities_priority_id_get(id, priority_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_priority_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **priority_id** | **Integer**|  | 

### Return type

[**SLAPriority**](SLAPriority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sl_as_id_priorities_priority_id_patch**
> SLAPriority service_sl_as_id_priorities_priority_id_patch(id, priority_id, operations)



Update S L A Priority

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

priority_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_sl_as_id_priorities_priority_id_patch(id, priority_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_priority_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **priority_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SLAPriority**](SLAPriority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sl_as_id_priorities_priority_id_put**
> SLAPriority service_sl_as_id_priorities_priority_id_put(id, priority_id, sla_priority)



Replace S L A Priority

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

api_instance = ConnectWise::SLAPrioritiesApi.new

id = 56 # Integer | 

priority_id = 56 # Integer | 

sla_priority = ConnectWise::SLAPriority.new # SLAPriority | 


begin
  result = api_instance.service_sl_as_id_priorities_priority_id_put(id, priority_id, sla_priority)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAPrioritiesApi->service_sl_as_id_priorities_priority_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **priority_id** | **Integer**|  | 
 **sla_priority** | [**SLAPriority**](SLAPriority.md)|  | 

### Return type

[**SLAPriority**](SLAPriority.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



