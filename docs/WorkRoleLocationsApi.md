# ConnectWise::WorkRoleLocationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_work_roles_id_locations_count_get**](WorkRoleLocationsApi.md#time_work_roles_id_locations_count_get) | **GET** /time/workRoles/{id}/locations/count | 
[**time_work_roles_id_locations_get**](WorkRoleLocationsApi.md#time_work_roles_id_locations_get) | **GET** /time/workRoles/{id}/locations | 
[**time_work_roles_id_locations_location_id_delete**](WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_delete) | **DELETE** /time/workRoles/{id}/locations/{locationId} | 
[**time_work_roles_id_locations_location_id_get**](WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_get) | **GET** /time/workRoles/{id}/locations/{locationId} | 
[**time_work_roles_id_locations_location_id_patch**](WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_patch) | **PATCH** /time/workRoles/{id}/locations/{locationId} | 
[**time_work_roles_id_locations_location_id_put**](WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_put) | **PUT** /time/workRoles/{id}/locations/{locationId} | 
[**time_work_roles_id_locations_post**](WorkRoleLocationsApi.md#time_work_roles_id_locations_post) | **POST** /time/workRoles/{id}/locations | 


# **time_work_roles_id_locations_count_get**
> Count time_work_roles_id_locations_count_get(id, opts)



Get Work Role Location Count

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_work_roles_id_locations_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_count_get: #{e}"
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



# **time_work_roles_id_locations_get**
> Array&lt;WorkRoleLocation&gt; time_work_roles_id_locations_get(id, opts)



Get Work Role Location

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

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
  result = api_instance.time_work_roles_id_locations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_get: #{e}"
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

[**Array&lt;WorkRoleLocation&gt;**](WorkRoleLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_roles_id_locations_location_id_delete**
> time_work_roles_id_locations_location_id_delete(id, location_id)



Delete Work Role Location By Id

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  api_instance.time_work_roles_id_locations_location_id_delete(id, location_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_location_id_delete: #{e}"
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



# **time_work_roles_id_locations_location_id_get**
> WorkRoleLocation time_work_roles_id_locations_location_id_get(id, location_id)



Get Work Role Location By Id

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  result = api_instance.time_work_roles_id_locations_location_id_get(id, location_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_location_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 

### Return type

[**WorkRoleLocation**](WorkRoleLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_roles_id_locations_location_id_patch**
> WorkRoleLocation time_work_roles_id_locations_location_id_patch(id, location_id, operations)



Update Work Role Location

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_work_roles_id_locations_location_id_patch(id, location_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_location_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkRoleLocation**](WorkRoleLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_roles_id_locations_location_id_put**
> WorkRoleLocation time_work_roles_id_locations_location_id_put(id, location_id, work_role_location)



Replace Work Role Location

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 

work_role_location = ConnectWise::WorkRoleLocation.new # WorkRoleLocation | 


begin
  result = api_instance.time_work_roles_id_locations_location_id_put(id, location_id, work_role_location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_location_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 
 **work_role_location** | [**WorkRoleLocation**](WorkRoleLocation.md)|  | 

### Return type

[**WorkRoleLocation**](WorkRoleLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_roles_id_locations_post**
> WorkRoleLocation time_work_roles_id_locations_post(id, work_role_location)



Create Work Role Location

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

api_instance = ConnectWise::WorkRoleLocationsApi.new

id = 56 # Integer | 

work_role_location = ConnectWise::WorkRoleLocation.new # WorkRoleLocation | 


begin
  result = api_instance.time_work_roles_id_locations_post(id, work_role_location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRoleLocationsApi->time_work_roles_id_locations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_location** | [**WorkRoleLocation**](WorkRoleLocation.md)|  | 

### Return type

[**WorkRoleLocation**](WorkRoleLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



