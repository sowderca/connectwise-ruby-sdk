# ConnectWise::TicketStopwatchesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_ticketstopwatches_count_get**](TicketStopwatchesApi.md#time_ticketstopwatches_count_get) | **GET** /time/ticketstopwatches/count | 
[**time_ticketstopwatches_get**](TicketStopwatchesApi.md#time_ticketstopwatches_get) | **GET** /time/ticketstopwatches | 
[**time_ticketstopwatches_id_delete**](TicketStopwatchesApi.md#time_ticketstopwatches_id_delete) | **DELETE** /time/ticketstopwatches/{id} | 
[**time_ticketstopwatches_id_get**](TicketStopwatchesApi.md#time_ticketstopwatches_id_get) | **GET** /time/ticketstopwatches/{id} | 
[**time_ticketstopwatches_id_patch**](TicketStopwatchesApi.md#time_ticketstopwatches_id_patch) | **PATCH** /time/ticketstopwatches/{id} | 
[**time_ticketstopwatches_id_put**](TicketStopwatchesApi.md#time_ticketstopwatches_id_put) | **PUT** /time/ticketstopwatches/{id} | 
[**time_ticketstopwatches_post**](TicketStopwatchesApi.md#time_ticketstopwatches_post) | **POST** /time/ticketstopwatches | 


# **time_ticketstopwatches_count_get**
> Count time_ticketstopwatches_count_get(opts)



Get Ticket Stopwatches Count

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

api_instance = ConnectWise::TicketStopwatchesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_ticketstopwatches_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_count_get: #{e}"
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



# **time_ticketstopwatches_get**
> Array&lt;TicketStopwatch&gt; time_ticketstopwatches_get(opts)



Get Ticket Stopwatches

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

api_instance = ConnectWise::TicketStopwatchesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_ticketstopwatches_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_get: #{e}"
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

[**Array&lt;TicketStopwatch&gt;**](TicketStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_ticketstopwatches_id_delete**
> time_ticketstopwatches_id_delete(id)



Delete Ticket Stopwatch By Id

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

api_instance = ConnectWise::TicketStopwatchesApi.new

id = 56 # Integer | 


begin
  api_instance.time_ticketstopwatches_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_id_delete: #{e}"
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



# **time_ticketstopwatches_id_get**
> TicketStopwatch time_ticketstopwatches_id_get(id)



Get Ticket Stopwatch By Id

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

api_instance = ConnectWise::TicketStopwatchesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_ticketstopwatches_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TicketStopwatch**](TicketStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_ticketstopwatches_id_patch**
> TicketStopwatch time_ticketstopwatches_id_patch(id, operations)



Update Ticket Stopwatch

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

api_instance = ConnectWise::TicketStopwatchesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_ticketstopwatches_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TicketStopwatch**](TicketStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_ticketstopwatches_id_put**
> TicketStopwatch time_ticketstopwatches_id_put(id, ticket_stopwatch)



Replace Ticket Stopwatch

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

api_instance = ConnectWise::TicketStopwatchesApi.new

id = 56 # Integer | 

ticket_stopwatch = ConnectWise::TicketStopwatch.new # TicketStopwatch | 


begin
  result = api_instance.time_ticketstopwatches_id_put(id, ticket_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **ticket_stopwatch** | [**TicketStopwatch**](TicketStopwatch.md)|  | 

### Return type

[**TicketStopwatch**](TicketStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_ticketstopwatches_post**
> TicketStopwatch time_ticketstopwatches_post(ticket_stopwatch)



Create Ticket Stopwatch

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

api_instance = ConnectWise::TicketStopwatchesApi.new

ticket_stopwatch = ConnectWise::TicketStopwatch.new # TicketStopwatch | 


begin
  result = api_instance.time_ticketstopwatches_post(ticket_stopwatch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketStopwatchesApi->time_ticketstopwatches_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_stopwatch** | [**TicketStopwatch**](TicketStopwatch.md)|  | 

### Return type

[**TicketStopwatch**](TicketStopwatch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



