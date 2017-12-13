# ConnectWise::ServicesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_mycompany_services_get**](ServicesApi.md#system_mycompany_services_get) | **GET** /system/mycompany/services | 
[**system_mycompany_services_id_get**](ServicesApi.md#system_mycompany_services_id_get) | **GET** /system/mycompany/services/{id} | 
[**system_mycompany_services_id_patch**](ServicesApi.md#system_mycompany_services_id_patch) | **PATCH** /system/mycompany/services/{id} | 
[**system_mycompany_services_id_put**](ServicesApi.md#system_mycompany_services_id_put) | **PUT** /system/mycompany/services/{id} | 


# **system_mycompany_services_get**
> Array&lt;Service&gt; system_mycompany_services_get(opts)



Get Services

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

api_instance = ConnectWise::ServicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_mycompany_services_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServicesApi->system_mycompany_services_get: #{e}"
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

[**Array&lt;Service&gt;**](Service.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_services_id_get**
> Service system_mycompany_services_id_get(id)



Get Service By Id

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

api_instance = ConnectWise::ServicesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_services_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServicesApi->system_mycompany_services_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Service**](Service.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_services_id_patch**
> Service system_mycompany_services_id_patch(id, operations)



Update Service

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

api_instance = ConnectWise::ServicesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_mycompany_services_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServicesApi->system_mycompany_services_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Service**](Service.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_services_id_put**
> Service system_mycompany_services_id_put(id, service)



Replace Service

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

api_instance = ConnectWise::ServicesApi.new

id = 56 # Integer | 

service = ConnectWise::Service.new # Service | 


begin
  result = api_instance.system_mycompany_services_id_put(id, service)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServicesApi->system_mycompany_services_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service** | [**Service**](Service.md)|  | 

### Return type

[**Service**](Service.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



