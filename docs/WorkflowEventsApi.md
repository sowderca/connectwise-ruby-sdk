# ConnectWise::WorkflowEventsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_id_events_count_get**](WorkflowEventsApi.md#system_workflows_id_events_count_get) | **GET** /system/workflows/{id}/events/count | 
[**system_workflows_id_events_event_id_delete**](WorkflowEventsApi.md#system_workflows_id_events_event_id_delete) | **DELETE** /system/workflows/{id}/events/{eventId} | 
[**system_workflows_id_events_event_id_get**](WorkflowEventsApi.md#system_workflows_id_events_event_id_get) | **GET** /system/workflows/{id}/events/{eventId} | 
[**system_workflows_id_events_event_id_patch**](WorkflowEventsApi.md#system_workflows_id_events_event_id_patch) | **PATCH** /system/workflows/{id}/events/{eventId} | 
[**system_workflows_id_events_event_id_put**](WorkflowEventsApi.md#system_workflows_id_events_event_id_put) | **PUT** /system/workflows/{id}/events/{eventId} | 
[**system_workflows_id_events_event_id_test_get**](WorkflowEventsApi.md#system_workflows_id_events_event_id_test_get) | **GET** /system/workflows/{id}/events/{eventId}/test | 
[**system_workflows_id_events_get**](WorkflowEventsApi.md#system_workflows_id_events_get) | **GET** /system/workflows/{id}/events | 
[**system_workflows_id_events_post**](WorkflowEventsApi.md#system_workflows_id_events_post) | **POST** /system/workflows/{id}/events | 


# **system_workflows_id_events_count_get**
> Count system_workflows_id_events_count_get(id, opts)



Get Workflow Events Count

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_id_events_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_count_get: #{e}"
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



# **system_workflows_id_events_event_id_delete**
> system_workflows_id_events_event_id_delete(id, event_id)



Delete Workflow Event By Id

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

event_id = 56 # Integer | 


begin
  api_instance.system_workflows_id_events_event_id_delete(id, event_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_event_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **event_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_workflows_id_events_event_id_get**
> WorkflowEvent system_workflows_id_events_event_id_get(id, event_id)



Get Workflow Event By Id

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

event_id = 56 # Integer | 


begin
  result = api_instance.system_workflows_id_events_event_id_get(id, event_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_event_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **event_id** | **Integer**|  | 

### Return type

[**WorkflowEvent**](WorkflowEvent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_events_event_id_patch**
> WorkflowEvent system_workflows_id_events_event_id_patch(id, event_id, operations)



Update Workflow Event

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

event_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_workflows_id_events_event_id_patch(id, event_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_event_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkflowEvent**](WorkflowEvent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_id_events_event_id_put**
> WorkflowEvent system_workflows_id_events_event_id_put(id, event_id, workflow_event)



Replace Workflow Event

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

event_id = 56 # Integer | 

workflow_event = ConnectWise::WorkflowEvent.new # WorkflowEvent | 


begin
  result = api_instance.system_workflows_id_events_event_id_put(id, event_id, workflow_event)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_event_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **workflow_event** | [**WorkflowEvent**](WorkflowEvent.md)|  | 

### Return type

[**WorkflowEvent**](WorkflowEvent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_id_events_event_id_test_get**
> JArray system_workflows_id_events_event_id_test_get(id, event_id)



Test Workflow Evemt

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

event_id = 56 # Integer | 


begin
  result = api_instance.system_workflows_id_events_event_id_test_get(id, event_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_event_id_test_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **event_id** | **Integer**|  | 

### Return type

[**JArray**](JArray.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_events_get**
> Array&lt;WorkflowEvent&gt; system_workflows_id_events_get(id, opts)



Get Workflow Events

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

api_instance = ConnectWise::WorkflowEventsApi.new

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
  result = api_instance.system_workflows_id_events_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_get: #{e}"
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

[**Array&lt;WorkflowEvent&gt;**](WorkflowEvent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_events_post**
> WorkflowEvent system_workflows_id_events_post(id, workflow_event)



Create Workflow Event

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

api_instance = ConnectWise::WorkflowEventsApi.new

id = 56 # Integer | 

workflow_event = ConnectWise::WorkflowEvent.new # WorkflowEvent | 


begin
  result = api_instance.system_workflows_id_events_post(id, workflow_event)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowEventsApi->system_workflows_id_events_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **workflow_event** | [**WorkflowEvent**](WorkflowEvent.md)|  | 

### Return type

[**WorkflowEvent**](WorkflowEvent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



