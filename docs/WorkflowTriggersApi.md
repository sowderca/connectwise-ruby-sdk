# ConnectWise::WorkflowTriggersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_id_triggers_count_get**](WorkflowTriggersApi.md#system_workflows_id_triggers_count_get) | **GET** /system/workflows/{id}/triggers/count | 
[**system_workflows_id_triggers_get**](WorkflowTriggersApi.md#system_workflows_id_triggers_get) | **GET** /system/workflows/{id}/triggers | 


# **system_workflows_id_triggers_count_get**
> Count system_workflows_id_triggers_count_get(id, opts)



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

api_instance = ConnectWise::WorkflowTriggersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_id_triggers_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTriggersApi->system_workflows_id_triggers_count_get: #{e}"
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



# **system_workflows_id_triggers_get**
> Array&lt;WorkflowTrigger&gt; system_workflows_id_triggers_get(id, opts)



Get Workflow Triggers

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

api_instance = ConnectWise::WorkflowTriggersApi.new

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
  result = api_instance.system_workflows_id_triggers_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTriggersApi->system_workflows_id_triggers_get: #{e}"
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

[**Array&lt;WorkflowTrigger&gt;**](WorkflowTrigger.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



