# ConnectWise::WorkflowActionAutomateParametersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflow_actions_id_automate_parameters_count_get**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_count_get) | **GET** /system/workflowActions/{id}/automateParameters/count | 
[**system_workflow_actions_id_automate_parameters_get**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_get) | **GET** /system/workflowActions/{id}/automateParameters | 
[**system_workflow_actions_id_automate_parameters_parameter_id_delete**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_delete) | **DELETE** /system/workflowActions/{id}/automateParameters/{parameterId} | 
[**system_workflow_actions_id_automate_parameters_parameter_id_get**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_get) | **GET** /system/workflowActions/{id}/automateParameters/{parameterId} | 
[**system_workflow_actions_id_automate_parameters_parameter_id_patch**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_patch) | **PATCH** /system/workflowActions/{id}/automateParameters/{parameterId} | 
[**system_workflow_actions_id_automate_parameters_parameter_id_put**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_put) | **PUT** /system/workflowActions/{id}/automateParameters/{parameterId} | 
[**system_workflow_actions_id_automate_parameters_post**](WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_post) | **POST** /system/workflowActions/{id}/automateParameters | 


# **system_workflow_actions_id_automate_parameters_count_get**
> Count system_workflow_actions_id_automate_parameters_count_get(id, opts)



Get Workflow Action Automate Parameters Count

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflow_actions_id_automate_parameters_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_count_get: #{e}"
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



# **system_workflow_actions_id_automate_parameters_get**
> Array&lt;WorkflowActionAutomateParameter&gt; system_workflow_actions_id_automate_parameters_get(id, opts)



Get Workflow Action Automate Parameters

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

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
  result = api_instance.system_workflow_actions_id_automate_parameters_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_get: #{e}"
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

[**Array&lt;WorkflowActionAutomateParameter&gt;**](WorkflowActionAutomateParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflow_actions_id_automate_parameters_parameter_id_delete**
> system_workflow_actions_id_automate_parameters_parameter_id_delete(id, parameter_id)



Delete Workflow Action Automate Parameter By Id

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 


begin
  api_instance.system_workflow_actions_id_automate_parameters_parameter_id_delete(id, parameter_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_parameter_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_workflow_actions_id_automate_parameters_parameter_id_get**
> WorkflowActionAutomateParameter system_workflow_actions_id_automate_parameters_parameter_id_get(id, parameter_id)



Get Workflow Action Automate Parameter By Id

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 


begin
  result = api_instance.system_workflow_actions_id_automate_parameters_parameter_id_get(id, parameter_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_parameter_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 

### Return type

[**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflow_actions_id_automate_parameters_parameter_id_patch**
> WorkflowActionAutomateParameter system_workflow_actions_id_automate_parameters_parameter_id_patch(id, parameter_id, operations)



Update Workflow Action Automate Parameter

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_workflow_actions_id_automate_parameters_parameter_id_patch(id, parameter_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_parameter_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflow_actions_id_automate_parameters_parameter_id_put**
> WorkflowActionAutomateParameter system_workflow_actions_id_automate_parameters_parameter_id_put(id, parameter_id, workflow_action_automate_parameter)



Replace Workflow Action Automate Parameter

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 

workflow_action_automate_parameter = ConnectWise::WorkflowActionAutomateParameter.new # WorkflowActionAutomateParameter | 


begin
  result = api_instance.system_workflow_actions_id_automate_parameters_parameter_id_put(id, parameter_id, workflow_action_automate_parameter)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_parameter_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 
 **workflow_action_automate_parameter** | [**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)|  | 

### Return type

[**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflow_actions_id_automate_parameters_post**
> WorkflowActionAutomateParameter system_workflow_actions_id_automate_parameters_post(id, workflow_action_automate_parameter)



Create Workflow Action Automate Parameter

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

api_instance = ConnectWise::WorkflowActionAutomateParametersApi.new

id = 56 # Integer | 

workflow_action_automate_parameter = ConnectWise::WorkflowActionAutomateParameter.new # WorkflowActionAutomateParameter | 


begin
  result = api_instance.system_workflow_actions_id_automate_parameters_post(id, workflow_action_automate_parameter)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowActionAutomateParametersApi->system_workflow_actions_id_automate_parameters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **workflow_action_automate_parameter** | [**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)|  | 

### Return type

[**WorkflowActionAutomateParameter**](WorkflowActionAutomateParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



