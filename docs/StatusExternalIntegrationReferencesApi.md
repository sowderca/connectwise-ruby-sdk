# ConnectWise::StatusExternalIntegrationReferencesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_status_external_integration_references_count_get**](StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_count_get) | **GET** /service/statusExternalIntegrationReferences/count | 
[**service_status_external_integration_references_get**](StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_get) | **GET** /service/statusExternalIntegrationReferences | 
[**service_status_external_integration_references_id_get**](StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_id_get) | **GET** /service/statusExternalIntegrationReferences/{id} | 


# **service_status_external_integration_references_count_get**
> Count service_status_external_integration_references_count_get(opts)



Get Status External Integration References Count

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

api_instance = ConnectWise::StatusExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_status_external_integration_references_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatusExternalIntegrationReferencesApi->service_status_external_integration_references_count_get: #{e}"
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



# **service_status_external_integration_references_get**
> Array&lt;StatusExternalIntegrationReference&gt; service_status_external_integration_references_get(opts)



Get Status External Integration References

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

api_instance = ConnectWise::StatusExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_status_external_integration_references_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatusExternalIntegrationReferencesApi->service_status_external_integration_references_get: #{e}"
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

[**Array&lt;StatusExternalIntegrationReference&gt;**](StatusExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_status_external_integration_references_id_get**
> StatusExternalIntegrationReference service_status_external_integration_references_id_get(id)



Get External Integration Status By Id

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

api_instance = ConnectWise::StatusExternalIntegrationReferencesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_status_external_integration_references_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatusExternalIntegrationReferencesApi->service_status_external_integration_references_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**StatusExternalIntegrationReference**](StatusExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



