# ConnectWise::ReportingServicesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_mycompany_reporting_services_get**](ReportingServicesApi.md#system_mycompany_reporting_services_get) | **GET** /system/mycompany/reportingServices | 
[**system_mycompany_reporting_services_id_get**](ReportingServicesApi.md#system_mycompany_reporting_services_id_get) | **GET** /system/mycompany/reportingServices/{id} | 
[**system_mycompany_reporting_services_id_patch**](ReportingServicesApi.md#system_mycompany_reporting_services_id_patch) | **PATCH** /system/mycompany/reportingServices/{id} | 
[**system_mycompany_reporting_services_id_put**](ReportingServicesApi.md#system_mycompany_reporting_services_id_put) | **PUT** /system/mycompany/reportingServices/{id} | 
[**system_mycompany_reporting_services_id_test_connection_post**](ReportingServicesApi.md#system_mycompany_reporting_services_id_test_connection_post) | **POST** /system/mycompany/reportingServices/{id}/testConnection | 


# **system_mycompany_reporting_services_get**
> Array&lt;ReportingService&gt; system_mycompany_reporting_services_get(opts)



Get Reporting Services

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

api_instance = ConnectWise::ReportingServicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_mycompany_reporting_services_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportingServicesApi->system_mycompany_reporting_services_get: #{e}"
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

[**Array&lt;ReportingService&gt;**](ReportingService.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_reporting_services_id_get**
> ReportingService system_mycompany_reporting_services_id_get(id)



Get Reporting Service By Id

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

api_instance = ConnectWise::ReportingServicesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_reporting_services_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportingServicesApi->system_mycompany_reporting_services_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ReportingService**](ReportingService.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_reporting_services_id_patch**
> ReportingService system_mycompany_reporting_services_id_patch(id, operations)



Update Reporting Service

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

api_instance = ConnectWise::ReportingServicesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_mycompany_reporting_services_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportingServicesApi->system_mycompany_reporting_services_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ReportingService**](ReportingService.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_reporting_services_id_put**
> ReportingService system_mycompany_reporting_services_id_put(id, service)



Replace Reporting Service

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

api_instance = ConnectWise::ReportingServicesApi.new

id = 56 # Integer | 

service = ConnectWise::ReportingService.new # ReportingService | 


begin
  result = api_instance.system_mycompany_reporting_services_id_put(id, service)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportingServicesApi->system_mycompany_reporting_services_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service** | [**ReportingService**](ReportingService.md)|  | 

### Return type

[**ReportingService**](ReportingService.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_reporting_services_id_test_connection_post**
> SuccessResponse system_mycompany_reporting_services_id_test_connection_post(id)



Test Reporting Service Connection

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

api_instance = ConnectWise::ReportingServicesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_reporting_services_id_test_connection_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportingServicesApi->system_mycompany_reporting_services_id_test_connection_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



