# ConnectWise::WorkTypeExternalIntegrationReferencesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_work_type_external_integration_references_count_get**](WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_count_get) | **GET** /time/workTypeExternalIntegrationReferences/count | 
[**time_work_type_external_integration_references_get**](WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_get) | **GET** /time/workTypeExternalIntegrationReferences | 
[**time_work_type_external_integration_references_id_get**](WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_id_get) | **GET** /time/workTypeExternalIntegrationReferences/{id} | 


# **time_work_type_external_integration_references_count_get**
> Count time_work_type_external_integration_references_count_get(opts)



Get External Integration Reference Count

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

api_instance = ConnectWise::WorkTypeExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_work_type_external_integration_references_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypeExternalIntegrationReferencesApi->time_work_type_external_integration_references_count_get: #{e}"
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



# **time_work_type_external_integration_references_get**
> Array&lt;WorkTypeExternalIntegrationReference&gt; time_work_type_external_integration_references_get(opts)



Get External Integration Referencet

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

api_instance = ConnectWise::WorkTypeExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_work_type_external_integration_references_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypeExternalIntegrationReferencesApi->time_work_type_external_integration_references_get: #{e}"
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

[**Array&lt;WorkTypeExternalIntegrationReference&gt;**](WorkTypeExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_type_external_integration_references_id_get**
> WorkTypeExternalIntegrationReference time_work_type_external_integration_references_id_get(id)



Get External Integration Reference By Id

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

api_instance = ConnectWise::WorkTypeExternalIntegrationReferencesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_work_type_external_integration_references_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkTypeExternalIntegrationReferencesApi->time_work_type_external_integration_references_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**WorkTypeExternalIntegrationReference**](WorkTypeExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



