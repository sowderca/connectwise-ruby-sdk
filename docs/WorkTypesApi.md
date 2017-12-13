# ConnectWise::WorkTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_work_types_count_get**](WorkTypesApi.md#time_work_types_count_get) | **GET** /time/workTypes/count | 
[**time_work_types_get**](WorkTypesApi.md#time_work_types_get) | **GET** /time/workTypes | 
[**time_work_types_id_delete**](WorkTypesApi.md#time_work_types_id_delete) | **DELETE** /time/workTypes/{id} | 
[**time_work_types_id_get**](WorkTypesApi.md#time_work_types_id_get) | **GET** /time/workTypes/{id} | 
[**time_work_types_id_patch**](WorkTypesApi.md#time_work_types_id_patch) | **PATCH** /time/workTypes/{id} | 
[**time_work_types_id_put**](WorkTypesApi.md#time_work_types_id_put) | **PUT** /time/workTypes/{id} | 
[**time_work_types_post**](WorkTypesApi.md#time_work_types_post) | **POST** /time/workTypes | 


# **time_work_types_count_get**
> Count time_work_types_count_get(opts)



Get Work Type Count

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

api_instance = ConnectWise::WorkTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_work_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_count_get: #{e}"
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



# **time_work_types_get**
> Array&lt;WorkType&gt; time_work_types_get(opts)



Get Work Type

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

api_instance = ConnectWise::WorkTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_work_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_get: #{e}"
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

[**Array&lt;WorkType&gt;**](WorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_types_id_delete**
> time_work_types_id_delete(id)



Delete Work Type By Id

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

api_instance = ConnectWise::WorkTypesApi.new

id = 56 # Integer | 


begin
  api_instance.time_work_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_id_delete: #{e}"
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



# **time_work_types_id_get**
> WorkType time_work_types_id_get(id)



Get Work Type By Id

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

api_instance = ConnectWise::WorkTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_work_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**WorkType**](WorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_types_id_patch**
> WorkType time_work_types_id_patch(id, operations)



Update Work Type

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

api_instance = ConnectWise::WorkTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_work_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkType**](WorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_types_id_put**
> WorkType time_work_types_id_put(id, work_type)



Replace Work Type

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

api_instance = ConnectWise::WorkTypesApi.new

id = 56 # Integer | 

work_type = ConnectWise::WorkType.new # WorkType | 


begin
  result = api_instance.time_work_types_id_put(id, work_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type** | [**WorkType**](WorkType.md)|  | 

### Return type

[**WorkType**](WorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_types_post**
> WorkType time_work_types_post(work_type)



Create Work Type

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

api_instance = ConnectWise::WorkTypesApi.new

work_type = ConnectWise::WorkType.new # WorkType | 


begin
  result = api_instance.time_work_types_post(work_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypesApi->time_work_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_type** | [**WorkType**](WorkType.md)|  | 

### Return type

[**WorkType**](WorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



