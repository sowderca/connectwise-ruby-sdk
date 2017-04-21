# ConnectWise::ActivityStopwatchesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_activitystopwatches_count_get**](ActivityStopwatchesApi.md#time_activitystopwatches_count_get) | **GET** /time/activitystopwatches/count | 
[**time_activitystopwatches_get**](ActivityStopwatchesApi.md#time_activitystopwatches_get) | **GET** /time/activitystopwatches | 
[**time_activitystopwatches_id_delete**](ActivityStopwatchesApi.md#time_activitystopwatches_id_delete) | **DELETE** /time/activitystopwatches/{id} | 
[**time_activitystopwatches_id_get**](ActivityStopwatchesApi.md#time_activitystopwatches_id_get) | **GET** /time/activitystopwatches/{id} | 
[**time_activitystopwatches_id_patch**](ActivityStopwatchesApi.md#time_activitystopwatches_id_patch) | **PATCH** /time/activitystopwatches/{id} | 
[**time_activitystopwatches_id_put**](ActivityStopwatchesApi.md#time_activitystopwatches_id_put) | **PUT** /time/activitystopwatches/{id} | 
[**time_activitystopwatches_post**](ActivityStopwatchesApi.md#time_activitystopwatches_post) | **POST** /time/activitystopwatches | 


# **time_activitystopwatches_count_get**
> Count time_activitystopwatches_count_get(opts)



Get Activity Stopwatches Count

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.time_activitystopwatches_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_count_get: #{e}"
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



# **time_activitystopwatches_get**
> Array&lt;ActivityStopwatch&gt; time_activitystopwatches_get(opts)



Get Activity Stopwatches

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_activitystopwatches_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_get: #{e}"
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

[**Array&lt;ActivityStopwatch&gt;**](ActivityStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_activitystopwatches_id_delete**
> time_activitystopwatches_id_delete(id)



Delete Activity Stopwatch By Id

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

id = 56 # Integer | 


begin
  api_instance.time_activitystopwatches_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_id_delete: #{e}"
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



# **time_activitystopwatches_id_get**
> ActivityStopwatch time_activitystopwatches_id_get(id)



Get Activity Stopwatch By Id

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_activitystopwatches_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ActivityStopwatch**](ActivityStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_activitystopwatches_id_patch**
> ActivityStopwatch time_activitystopwatches_id_patch(id, operations)



Update Activity Stopwatch

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_activitystopwatches_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ActivityStopwatch**](ActivityStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_activitystopwatches_id_put**
> ActivityStopwatch time_activitystopwatches_id_put(id, activity_stopwatch)



Replace Activity Stopwatch

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

id = 56 # Integer | 

activity_stopwatch = ConnectWise::ActivityStopwatch.new # ActivityStopwatch | 


begin
  result = api_instance.time_activitystopwatches_id_put(id, activity_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **activity_stopwatch** | [**ActivityStopwatch**](ActivityStopwatch.md)|  | 

### Return type

[**ActivityStopwatch**](ActivityStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_activitystopwatches_post**
> ActivityStopwatch time_activitystopwatches_post(activity_stopwatch)



Create Activity Stopwatch

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

api_instance = ConnectWise::ActivityStopwatchesApi.new

activity_stopwatch = ConnectWise::ActivityStopwatch.new # ActivityStopwatch | 


begin
  result = api_instance.time_activitystopwatches_post(activity_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStopwatchesApi->time_activitystopwatches_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_stopwatch** | [**ActivityStopwatch**](ActivityStopwatch.md)|  | 

### Return type

[**ActivityStopwatch**](ActivityStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



