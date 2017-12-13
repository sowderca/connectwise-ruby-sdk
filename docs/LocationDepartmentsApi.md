# ConnectWise::LocationDepartmentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_locations_id_departments_count_get**](LocationDepartmentsApi.md#system_locations_id_departments_count_get) | **GET** /system/locations/{id}/departments/count | 
[**system_locations_id_departments_get**](LocationDepartmentsApi.md#system_locations_id_departments_get) | **GET** /system/locations/{id}/departments | 
[**system_locations_parent_id_departments_id_get**](LocationDepartmentsApi.md#system_locations_parent_id_departments_id_get) | **GET** /system/locations/{parentId}/departments/{id} | 


# **system_locations_id_departments_count_get**
> Count system_locations_id_departments_count_get(id, opts)



Get Location Department Count

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

api_instance = ConnectWise::LocationDepartmentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_locations_id_departments_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationDepartmentsApi->system_locations_id_departments_count_get: #{e}"
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



# **system_locations_id_departments_get**
> Array&lt;LocationDepartment&gt; system_locations_id_departments_get(id, opts)



Get Location Department

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

api_instance = ConnectWise::LocationDepartmentsApi.new

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
  result = api_instance.system_locations_id_departments_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationDepartmentsApi->system_locations_id_departments_get: #{e}"
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

[**Array&lt;LocationDepartment&gt;**](LocationDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_locations_parent_id_departments_id_get**
> LocationDepartment system_locations_parent_id_departments_id_get(parent_id, id)



Get Location Department By Id

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

api_instance = ConnectWise::LocationDepartmentsApi.new

parent_id = 56 # Integer | 

id = 56 # Integer | 


begin
  result = api_instance.system_locations_parent_id_departments_id_get(parent_id, id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationDepartmentsApi->system_locations_parent_id_departments_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

[**LocationDepartment**](LocationDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



