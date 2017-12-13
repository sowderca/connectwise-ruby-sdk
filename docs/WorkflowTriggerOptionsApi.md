# ConnectWise::WorkflowTriggerOptionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_workflow_id_triggers_trigger_id_options_count_get**](WorkflowTriggerOptionsApi.md#system_workflows_workflow_id_triggers_trigger_id_options_count_get) | **GET** /system/workflows/{workflowId}/triggers/{triggerId}/options/count | 
[**system_workflows_workflow_id_triggers_trigger_id_options_get**](WorkflowTriggerOptionsApi.md#system_workflows_workflow_id_triggers_trigger_id_options_get) | **GET** /system/workflows/{workflowId}/triggers/{triggerId}/options | 


# **system_workflows_workflow_id_triggers_trigger_id_options_count_get**
> Count system_workflows_workflow_id_triggers_trigger_id_options_count_get(workflow_id, trigger_id, opts)



Get Workflow Triggers Count

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

api_instance = ConnectWise::WorkflowTriggerOptionsApi.new

workflow_id = 56 # Integer | 

trigger_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_workflow_id_triggers_trigger_id_options_count_get(workflow_id, trigger_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTriggerOptionsApi->system_workflows_workflow_id_triggers_trigger_id_options_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **trigger_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_workflow_id_triggers_trigger_id_options_get**
> Array&lt;WorkflowTriggerOption&gt; system_workflows_workflow_id_triggers_trigger_id_options_get(workflow_id, trigger_id, opts)



Get Trigger Options

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

api_instance = ConnectWise::WorkflowTriggerOptionsApi.new

workflow_id = 56 # Integer | 

trigger_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_workflows_workflow_id_triggers_trigger_id_options_get(workflow_id, trigger_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTriggerOptionsApi->system_workflows_workflow_id_triggers_trigger_id_options_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**|  | 
 **trigger_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;WorkflowTriggerOption&gt;**](WorkflowTriggerOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



