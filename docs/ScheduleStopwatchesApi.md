# ConnectWise::ScheduleStopwatchesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_schedulestopwatches_count_get**](ScheduleStopwatchesApi.md#time_schedulestopwatches_count_get) | **GET** /time/schedulestopwatches/count | 
[**time_schedulestopwatches_get**](ScheduleStopwatchesApi.md#time_schedulestopwatches_get) | **GET** /time/schedulestopwatches | 
[**time_schedulestopwatches_id_delete**](ScheduleStopwatchesApi.md#time_schedulestopwatches_id_delete) | **DELETE** /time/schedulestopwatches/{id} | 
[**time_schedulestopwatches_id_get**](ScheduleStopwatchesApi.md#time_schedulestopwatches_id_get) | **GET** /time/schedulestopwatches/{id} | 
[**time_schedulestopwatches_id_patch**](ScheduleStopwatchesApi.md#time_schedulestopwatches_id_patch) | **PATCH** /time/schedulestopwatches/{id} | 
[**time_schedulestopwatches_id_put**](ScheduleStopwatchesApi.md#time_schedulestopwatches_id_put) | **PUT** /time/schedulestopwatches/{id} | 
[**time_schedulestopwatches_post**](ScheduleStopwatchesApi.md#time_schedulestopwatches_post) | **POST** /time/schedulestopwatches | 


# **time_schedulestopwatches_count_get**
> Count time_schedulestopwatches_count_get(opts)



Get Schedule Stopwatches Count

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.time_schedulestopwatches_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_count_get: #{e}"
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



# **time_schedulestopwatches_get**
> Array&lt;ScheduleStopwatch&gt; time_schedulestopwatches_get(opts)



Get Schedule Stopwatches

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_schedulestopwatches_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_get: #{e}"
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

[**Array&lt;ScheduleStopwatch&gt;**](ScheduleStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_schedulestopwatches_id_delete**
> time_schedulestopwatches_id_delete(id)



Delete Schedule Stopwatch By Id

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

id = 56 # Integer | 


begin
  api_instance.time_schedulestopwatches_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_id_delete: #{e}"
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



# **time_schedulestopwatches_id_get**
> ScheduleStopwatch time_schedulestopwatches_id_get(id)



Get Schedule Stopwatch By Id

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_schedulestopwatches_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleStopwatch**](ScheduleStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_schedulestopwatches_id_patch**
> ScheduleStopwatch time_schedulestopwatches_id_patch(id, operations)



Update Schedule Stopwatch

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_schedulestopwatches_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleStopwatch**](ScheduleStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_schedulestopwatches_id_put**
> ScheduleStopwatch time_schedulestopwatches_id_put(id, schedule_stopwatch)



Replace Schedule Stopwatch

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

id = 56 # Integer | 

schedule_stopwatch = ConnectWise::ScheduleStopwatch.new # ScheduleStopwatch | 


begin
  result = api_instance.time_schedulestopwatches_id_put(id, schedule_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **schedule_stopwatch** | [**ScheduleStopwatch**](ScheduleStopwatch.md)|  | 

### Return type

[**ScheduleStopwatch**](ScheduleStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_schedulestopwatches_post**
> ScheduleStopwatch time_schedulestopwatches_post(schedule_stopwatch)



Create Schedule Stopwatch

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

api_instance = ConnectWise::ScheduleStopwatchesApi.new

schedule_stopwatch = ConnectWise::ScheduleStopwatch.new # ScheduleStopwatch | 


begin
  result = api_instance.time_schedulestopwatches_post(schedule_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleStopwatchesApi->time_schedulestopwatches_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_stopwatch** | [**ScheduleStopwatch**](ScheduleStopwatch.md)|  | 

### Return type

[**ScheduleStopwatch**](ScheduleStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



