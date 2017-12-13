# ConnectWise::LocationWorkRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_locations_id_work_roles_count_get**](LocationWorkRolesApi.md#system_locations_id_work_roles_count_get) | **GET** /system/locations/{id}/workRoles/count | 
[**system_locations_id_work_roles_get**](LocationWorkRolesApi.md#system_locations_id_work_roles_get) | **GET** /system/locations/{id}/workRoles | 
[**system_locations_parent_id_work_roles_id_get**](LocationWorkRolesApi.md#system_locations_parent_id_work_roles_id_get) | **GET** /system/locations/{parentId}/workRoles/{id} | 


# **system_locations_id_work_roles_count_get**
> Count system_locations_id_work_roles_count_get(id, opts)



Get Location Work Role Count

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

api_instance = ConnectWise::LocationWorkRolesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_locations_id_work_roles_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationWorkRolesApi->system_locations_id_work_roles_count_get: #{e}"
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



# **system_locations_id_work_roles_get**
> Array&lt;LocationWorkRole&gt; system_locations_id_work_roles_get(id, opts)



Get Location Work Role

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

api_instance = ConnectWise::LocationWorkRolesApi.new

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
  result = api_instance.system_locations_id_work_roles_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationWorkRolesApi->system_locations_id_work_roles_get: #{e}"
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

[**Array&lt;LocationWorkRole&gt;**](LocationWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_locations_parent_id_work_roles_id_get**
> LocationWorkRole system_locations_parent_id_work_roles_id_get(parent_id, id)



Get Location Work Role By Id

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

api_instance = ConnectWise::LocationWorkRolesApi.new

parent_id = 56 # Integer | 

id = 56 # Integer | 


begin
  result = api_instance.system_locations_parent_id_work_roles_id_get(parent_id, id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationWorkRolesApi->system_locations_parent_id_work_roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

[**LocationWorkRole**](LocationWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



