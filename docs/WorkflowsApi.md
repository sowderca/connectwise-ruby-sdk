# ConnectWise::WorkflowsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_count_get**](WorkflowsApi.md#system_workflows_count_get) | **GET** /system/workflows/count | 
[**system_workflows_get**](WorkflowsApi.md#system_workflows_get) | **GET** /system/workflows | 
[**system_workflows_id_copy_post**](WorkflowsApi.md#system_workflows_id_copy_post) | **POST** /system/workflows/{id}/copy | 
[**system_workflows_id_delete**](WorkflowsApi.md#system_workflows_id_delete) | **DELETE** /system/workflows/{id} | 
[**system_workflows_id_get**](WorkflowsApi.md#system_workflows_id_get) | **GET** /system/workflows/{id} | 
[**system_workflows_id_patch**](WorkflowsApi.md#system_workflows_id_patch) | **PATCH** /system/workflows/{id} | 
[**system_workflows_id_put**](WorkflowsApi.md#system_workflows_id_put) | **PUT** /system/workflows/{id} | 
[**system_workflows_post**](WorkflowsApi.md#system_workflows_post) | **POST** /system/workflows | 


# **system_workflows_count_get**
> Count system_workflows_count_get(opts)



Get Workflows Count

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

api_instance = ConnectWise::WorkflowsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_count_get: #{e}"
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



# **system_workflows_get**
> Array&lt;Workflow&gt; system_workflows_get(opts)



Get Workflows

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

api_instance = ConnectWise::WorkflowsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_workflows_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_get: #{e}"
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

[**Array&lt;Workflow&gt;**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_copy_post**
> Workflow system_workflows_id_copy_post(id)



Copy Workflow

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

api_instance = ConnectWise::WorkflowsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_workflows_id_copy_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_id_copy_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_delete**
> system_workflows_id_delete(id)



Delete Workflow By Id

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

api_instance = ConnectWise::WorkflowsApi.new

id = 56 # Integer | 


begin
  api_instance.system_workflows_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_id_delete: #{e}"
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



# **system_workflows_id_get**
> Workflow system_workflows_id_get(id)



Get Workflow By Id

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

api_instance = ConnectWise::WorkflowsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_workflows_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_id_patch**
> Workflow system_workflows_id_patch(id, operations)



Update Workflow

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

api_instance = ConnectWise::WorkflowsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_workflows_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_id_put**
> Workflow system_workflows_id_put(id, workflow)



Replace Workflow

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

api_instance = ConnectWise::WorkflowsApi.new

id = 56 # Integer | 

workflow = ConnectWise::Workflow.new # Workflow | 


begin
  result = api_instance.system_workflows_id_put(id, workflow)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **workflow** | [**Workflow**](Workflow.md)|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_workflows_post**
> Workflow system_workflows_post(workflow)



Create Workflow

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

api_instance = ConnectWise::WorkflowsApi.new

workflow = ConnectWise::Workflow.new # Workflow | 


begin
  result = api_instance.system_workflows_post(workflow)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowsApi->system_workflows_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow** | [**Workflow**](Workflow.md)|  | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



