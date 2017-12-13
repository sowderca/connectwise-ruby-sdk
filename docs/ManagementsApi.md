# ConnectWise::ManagementsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_count_get**](ManagementsApi.md#company_management_count_get) | **GET** /company/management/count | 
[**company_management_get**](ManagementsApi.md#company_management_get) | **GET** /company/management | 
[**company_management_id_get**](ManagementsApi.md#company_management_id_get) | **GET** /company/management/{id} | 
[**company_management_id_patch**](ManagementsApi.md#company_management_id_patch) | **PATCH** /company/management/{id} | 
[**company_management_id_put**](ManagementsApi.md#company_management_id_put) | **PUT** /company/management/{id} | 


# **company_management_count_get**
> Count company_management_count_get(opts)



Get Managements Count

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

api_instance = ConnectWise::ManagementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementsApi->company_management_count_get: #{e}"
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



# **company_management_get**
> Array&lt;Management&gt; company_management_get(opts)



Get Managements

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

api_instance = ConnectWise::ManagementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementsApi->company_management_get: #{e}"
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

[**Array&lt;Management&gt;**](Management.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_id_get**
> Management company_management_id_get(id)



Get Management By Id

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

api_instance = ConnectWise::ManagementsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_management_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementsApi->company_management_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Management**](Management.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_id_patch**
> Management company_management_id_patch(id, operations)



Update Management

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

api_instance = ConnectWise::ManagementsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementsApi->company_management_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Management**](Management.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_id_put**
> Management company_management_id_put(id, management)



Replace Management

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

api_instance = ConnectWise::ManagementsApi.new

id = 56 # Integer | 

management = ConnectWise::Management.new # Management | 


begin
  result = api_instance.company_management_id_put(id, management)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementsApi->company_management_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management** | [**Management**](Management.md)|  | 

### Return type

[**Management**](Management.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



