# ConnectWise::WorkflowTableTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_workflows_table_types_count_get**](WorkflowTableTypesApi.md#system_workflows_table_types_count_get) | **GET** /system/workflows/tableTypes/count | 
[**system_workflows_table_types_get**](WorkflowTableTypesApi.md#system_workflows_table_types_get) | **GET** /system/workflows/tableTypes | 
[**system_workflows_table_types_id_get**](WorkflowTableTypesApi.md#system_workflows_table_types_id_get) | **GET** /system/workflows/tableTypes/{id} | 


# **system_workflows_table_types_count_get**
> Count system_workflows_table_types_count_get(opts)



Get Workflow Table Types Count

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

api_instance = ConnectWise::WorkflowTableTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_workflows_table_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTableTypesApi->system_workflows_table_types_count_get: #{e}"
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



# **system_workflows_table_types_get**
> Array&lt;WorkflowTableType&gt; system_workflows_table_types_get(opts)



Get Workflow Table Types

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

api_instance = ConnectWise::WorkflowTableTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_workflows_table_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTableTypesApi->system_workflows_table_types_get: #{e}"
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

[**Array&lt;WorkflowTableType&gt;**](WorkflowTableType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_workflows_table_types_id_get**
> WorkflowTableType system_workflows_table_types_id_get(id)



Get Workflow Table Type By Id

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

api_instance = ConnectWise::WorkflowTableTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_workflows_table_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkflowTableTypesApi->system_workflows_table_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**WorkflowTableType**](WorkflowTableType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



