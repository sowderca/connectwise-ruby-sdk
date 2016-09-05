# Connectwise::ScheduleStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_statuses_count_get**](ScheduleStatusesApi.md#schedule_statuses_count_get) | **GET** /schedule/statuses/count | 
[**schedule_statuses_get**](ScheduleStatusesApi.md#schedule_statuses_get) | **GET** /schedule/statuses | 
[**schedule_statuses_id_delete**](ScheduleStatusesApi.md#schedule_statuses_id_delete) | **DELETE** /schedule/statuses/{id} | 
[**schedule_statuses_id_get**](ScheduleStatusesApi.md#schedule_statuses_id_get) | **GET** /schedule/statuses/{id} | 
[**schedule_statuses_id_patch**](ScheduleStatusesApi.md#schedule_statuses_id_patch) | **PATCH** /schedule/statuses/{id} | 
[**schedule_statuses_id_put**](ScheduleStatusesApi.md#schedule_statuses_id_put) | **PUT** /schedule/statuses/{id} | 
[**schedule_statuses_post**](ScheduleStatusesApi.md#schedule_statuses_post) | **POST** /schedule/statuses | 


# **schedule_statuses_count_get**
> Count schedule_statuses_count_get(opts)



Get Schedule Statuses Count

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

api_instance = Connectwise::ScheduleStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_statuses_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_count_get: #{e}"
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



# **schedule_statuses_get**
> Array&lt;ScheduleStatus&gt; schedule_statuses_get(opts)



Get Schedule Statuses

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

api_instance = Connectwise::ScheduleStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.schedule_statuses_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_get: #{e}"
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

[**Array&lt;ScheduleStatus&gt;**](ScheduleStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_statuses_id_delete**
> schedule_statuses_id_delete(id)



Delete Schedule Status By Id

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

api_instance = Connectwise::ScheduleStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.schedule_statuses_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_id_delete: #{e}"
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



# **schedule_statuses_id_get**
> ScheduleStatus schedule_statuses_id_get(id)



Get Schedule Status By Id

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

api_instance = Connectwise::ScheduleStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_statuses_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleStatus**](ScheduleStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_statuses_id_patch**
> ScheduleStatus schedule_statuses_id_patch(id, operations)



Update Schedule Status

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

api_instance = Connectwise::ScheduleStatusesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.schedule_statuses_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleStatus**](ScheduleStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_statuses_id_put**
> ScheduleStatus schedule_statuses_id_put(id, schedule_status)



Replace Schedule Status

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

api_instance = Connectwise::ScheduleStatusesApi.new

id = 56 # Integer | 

schedule_status = Connectwise::ScheduleStatus.new # ScheduleStatus | 


begin
  result = api_instance.schedule_statuses_id_put(id, schedule_status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **schedule_status** | [**ScheduleStatus**](ScheduleStatus.md)|  | 

### Return type

[**ScheduleStatus**](ScheduleStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_statuses_post**
> ScheduleStatus schedule_statuses_post(schedule_status)



Create Schedule Status

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

api_instance = Connectwise::ScheduleStatusesApi.new

schedule_status = Connectwise::ScheduleStatus.new # ScheduleStatus | 


begin
  result = api_instance.schedule_statuses_post(schedule_status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ScheduleStatusesApi->schedule_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_status** | [**ScheduleStatus**](ScheduleStatus.md)|  | 

### Return type

[**ScheduleStatus**](ScheduleStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



