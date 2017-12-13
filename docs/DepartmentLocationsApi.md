# ConnectWise::DepartmentLocationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_departments_id_locations_count_get**](DepartmentLocationsApi.md#system_departments_id_locations_count_get) | **GET** /system/departments/{id}/locations/count | 
[**system_departments_id_locations_get**](DepartmentLocationsApi.md#system_departments_id_locations_get) | **GET** /system/departments/{id}/locations | 
[**system_departments_id_locations_location_id_delete**](DepartmentLocationsApi.md#system_departments_id_locations_location_id_delete) | **DELETE** /system/departments/{id}/locations/{locationId} | 
[**system_departments_id_locations_location_id_get**](DepartmentLocationsApi.md#system_departments_id_locations_location_id_get) | **GET** /system/departments/{id}/locations/{locationId} | 
[**system_departments_id_locations_location_id_patch**](DepartmentLocationsApi.md#system_departments_id_locations_location_id_patch) | **PATCH** /system/departments/{id}/locations/{locationId} | 
[**system_departments_id_locations_location_id_put**](DepartmentLocationsApi.md#system_departments_id_locations_location_id_put) | **PUT** /system/departments/{id}/locations/{locationId} | 
[**system_departments_id_locations_post**](DepartmentLocationsApi.md#system_departments_id_locations_post) | **POST** /system/departments/{id}/locations | 


# **system_departments_id_locations_count_get**
> Count system_departments_id_locations_count_get(id, opts)



Get Department Location Count

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_departments_id_locations_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_count_get: #{e}"
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



# **system_departments_id_locations_get**
> Array&lt;DepartmentLocation&gt; system_departments_id_locations_get(id, opts)



Get Department Location

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

api_instance = ConnectWise::DepartmentLocationsApi.new

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
  result = api_instance.system_departments_id_locations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_get: #{e}"
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

[**Array&lt;DepartmentLocation&gt;**](DepartmentLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_departments_id_locations_location_id_delete**
> system_departments_id_locations_location_id_delete(id, location_id)



Delete Department Location By Id

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  api_instance.system_departments_id_locations_location_id_delete(id, location_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_location_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_departments_id_locations_location_id_get**
> DepartmentLocation system_departments_id_locations_location_id_get(id, location_id)



Get Department Location By Id

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  result = api_instance.system_departments_id_locations_location_id_get(id, location_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_location_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 

### Return type

[**DepartmentLocation**](DepartmentLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_departments_id_locations_location_id_patch**
> DepartmentLocation system_departments_id_locations_location_id_patch(id, location_id, operations)



Update Department Location

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_departments_id_locations_location_id_patch(id, location_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_location_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**DepartmentLocation**](DepartmentLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_departments_id_locations_location_id_put**
> DepartmentLocation system_departments_id_locations_location_id_put(id, location_id, department_location)



Replace Company Team

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 

department_location = ConnectWise::DepartmentLocation.new # DepartmentLocation | 


begin
  result = api_instance.system_departments_id_locations_location_id_put(id, location_id, department_location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_location_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 
 **department_location** | [**DepartmentLocation**](DepartmentLocation.md)|  | 

### Return type

[**DepartmentLocation**](DepartmentLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_departments_id_locations_post**
> DepartmentLocation system_departments_id_locations_post(id, department_location)



Create Department Location

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

api_instance = ConnectWise::DepartmentLocationsApi.new

id = 56 # Integer | 

department_location = ConnectWise::DepartmentLocation.new # DepartmentLocation | 


begin
  result = api_instance.system_departments_id_locations_post(id, department_location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentLocationsApi->system_departments_id_locations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **department_location** | [**DepartmentLocation**](DepartmentLocation.md)|  | 

### Return type

[**DepartmentLocation**](DepartmentLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



