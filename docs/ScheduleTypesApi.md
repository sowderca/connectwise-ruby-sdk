# Connectwise::ScheduleTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_types_count_get**](ScheduleTypesApi.md#schedule_types_count_get) | **GET** /schedule/types/count | 
[**schedule_types_get**](ScheduleTypesApi.md#schedule_types_get) | **GET** /schedule/types | 
[**schedule_types_id_delete**](ScheduleTypesApi.md#schedule_types_id_delete) | **DELETE** /schedule/types/{id} | 
[**schedule_types_id_get**](ScheduleTypesApi.md#schedule_types_id_get) | **GET** /schedule/types/{id} | 
[**schedule_types_id_patch**](ScheduleTypesApi.md#schedule_types_id_patch) | **PATCH** /schedule/types/{id} | 
[**schedule_types_id_put**](ScheduleTypesApi.md#schedule_types_id_put) | **PUT** /schedule/types/{id} | 
[**schedule_types_post**](ScheduleTypesApi.md#schedule_types_post) | **POST** /schedule/types | 


# **schedule_types_count_get**
> Count schedule_types_count_get(opts)



Get Schedule Types Count

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

api_instance = Connectwise::ScheduleTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_types_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_count_get: #{e}"
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



# **schedule_types_get**
> Array&lt;ScheduleType&gt; schedule_types_get(opts)



Get Schedule Types

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

api_instance = Connectwise::ScheduleTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.schedule_types_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_get: #{e}"
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

[**Array&lt;ScheduleType&gt;**](ScheduleType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_types_id_delete**
> schedule_types_id_delete(id)



Delete Schedule Type By Id

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

api_instance = Connectwise::ScheduleTypesApi.new

id = 56 # Integer | 


begin
  api_instance.schedule_types_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_id_delete: #{e}"
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



# **schedule_types_id_get**
> ScheduleType schedule_types_id_get(id)



Get Schedule Type By Id

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

api_instance = Connectwise::ScheduleTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_types_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleType**](ScheduleType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_types_id_patch**
> ScheduleType schedule_types_id_patch(id, operations)



Update Schedule Type

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

api_instance = Connectwise::ScheduleTypesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.schedule_types_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleType**](ScheduleType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_types_id_put**
> ScheduleType schedule_types_id_put(id, schedule_type)



Replace Schedule Type

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

api_instance = Connectwise::ScheduleTypesApi.new

id = 56 # Integer | 

schedule_type = Connectwise::ScheduleType.new # ScheduleType | 


begin
  result = api_instance.schedule_types_id_put(id, schedule_type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **schedule_type** | [**ScheduleType**](ScheduleType.md)|  | 

### Return type

[**ScheduleType**](ScheduleType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_types_post**
> ScheduleType schedule_types_post(schedule_type)



Create Schedule Type

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

api_instance = Connectwise::ScheduleTypesApi.new

schedule_type = Connectwise::ScheduleType.new # ScheduleType | 


begin
  result = api_instance.schedule_types_post(schedule_type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleTypesApi->schedule_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_type** | [**ScheduleType**](ScheduleType.md)|  | 

### Return type

[**ScheduleType**](ScheduleType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



