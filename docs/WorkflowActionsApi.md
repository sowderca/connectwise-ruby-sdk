# ConnectWise::WorkflowActionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_workflow_id_events_event_id_actions_action_id_delete**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_delete) | **DELETE** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} | 
[**system_workflows_workflow_id_events_event_id_actions_action_id_get**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} | 
[**system_workflows_workflow_id_events_event_id_actions_action_id_patch**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_patch) | **PATCH** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} | 
[**system_workflows_workflow_id_events_event_id_actions_action_id_put**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_put) | **PUT** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} | 
[**system_workflows_workflow_id_events_event_id_actions_count_get**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_count_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions/count | 
[**system_workflows_workflow_id_events_event_id_actions_get**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions | 
[**system_workflows_workflow_id_events_event_id_actions_post**](WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_post) | **POST** /system/workflows/{workflowId}/events/{eventId}/actions | 


# **system_workflows_workflow_id_events_event_id_actions_action_id_delete**
> system_workflows_workflow_id_events_event_id_actions_action_id_delete(workflow_id, event_id, action_id)



Delete Workflow Action By Id

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

action_id = 56 # Integer | 


begin
  api_instance.system_workflows_workflow_id_events_event_id_actions_action_id_delete(workflow_id, event_id, action_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_action_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **action_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_workflows_workflow_id_events_event_id_actions_action_id_get**
> WorkflowAction system_workflows_workflow_id_events_event_id_actions_action_id_get(workflow_id, event_id, action_id)



Get Workflow Action By Id

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

action_id = 56 # Integer | 


begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_action_id_get(workflow_id, event_id, action_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_action_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **action_id** | **Integer**|  | 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_workflow_id_events_event_id_actions_action_id_patch**
> WorkflowAction system_workflows_workflow_id_events_event_id_actions_action_id_patch(workflow_id, event_id, action_id, operations)



Update Workflow Action

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

action_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_action_id_patch(workflow_id, event_id, action_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_action_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **action_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_workflow_id_events_event_id_actions_action_id_put**
> WorkflowAction system_workflows_workflow_id_events_event_id_actions_action_id_put(workflow_id, event_id, action_id, workflow_action)



Replace Workflow Action

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

action_id = 56 # Integer | 

workflow_action = ConnectWise::WorkflowAction.new # WorkflowAction | 


begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_action_id_put(workflow_id, event_id, action_id, workflow_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_action_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **action_id** | **Integer**|  | 
 **workflow_action** | [**WorkflowAction**](WorkflowAction.md)|  | 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_workflow_id_events_event_id_actions_count_get**
> Count system_workflows_workflow_id_events_event_id_actions_count_get(workflow_id, event_id, opts)



Get Workflow Actions Count

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_count_get(workflow_id, event_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_workflow_id_events_event_id_actions_get**
> Array&lt;WorkflowAction&gt; system_workflows_workflow_id_events_event_id_actions_get(workflow_id, event_id, opts)



Get Workflow Actions

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_get(workflow_id, event_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;WorkflowAction&gt;**](WorkflowAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_workflow_id_events_event_id_actions_post**
> WorkflowAction system_workflows_workflow_id_events_event_id_actions_post(workflow_id, event_id, workflow_action)



Create Workflow Action

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

api_instance = ConnectWise::WorkflowActionsApi.new

workflow_id = 56 # Integer | 

event_id = 56 # Integer | 

workflow_action = ConnectWise::WorkflowAction.new # WorkflowAction | 


begin
  result = api_instance.system_workflows_workflow_id_events_event_id_actions_post(workflow_id, event_id, workflow_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionsApi->system_workflows_workflow_id_events_event_id_actions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **event_id** | **Integer**|  | 
 **workflow_action** | [**WorkflowAction**](WorkflowAction.md)|  | 

### Return type

[**WorkflowAction**](WorkflowAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



