# ConnectWise::LocationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_locations_count_get**](LocationsApi.md#system_locations_count_get) | **GET** /system/locations/count | 
[**system_locations_get**](LocationsApi.md#system_locations_get) | **GET** /system/locations | 
[**system_locations_id_delete**](LocationsApi.md#system_locations_id_delete) | **DELETE** /system/locations/{id} | 
[**system_locations_id_get**](LocationsApi.md#system_locations_id_get) | **GET** /system/locations/{id} | 
[**system_locations_id_patch**](LocationsApi.md#system_locations_id_patch) | **PATCH** /system/locations/{id} | 
[**system_locations_id_put**](LocationsApi.md#system_locations_id_put) | **PUT** /system/locations/{id} | 
[**system_locations_post**](LocationsApi.md#system_locations_post) | **POST** /system/locations | 


# **system_locations_count_get**
> Count system_locations_count_get(opts)



Get Location Count

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

api_instance = ConnectWise::LocationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_locations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_count_get: #{e}"
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



# **system_locations_get**
> Array&lt;Location&gt; system_locations_get(opts)



Get Location

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

api_instance = ConnectWise::LocationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_locations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_get: #{e}"
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

[**Array&lt;Location&gt;**](Location.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_locations_id_delete**
> system_locations_id_delete(id)



Delete Location By Id

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

api_instance = ConnectWise::LocationsApi.new

id = 56 # Integer | 


begin
  api_instance.system_locations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_locations_id_get**
> Location system_locations_id_get(id)



Get Location By Id

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

api_instance = ConnectWise::LocationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_locations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Location**](Location.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_locations_id_patch**
> Location system_locations_id_patch(id, operations)



Update Location

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

api_instance = ConnectWise::LocationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_locations_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Location**](Location.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_locations_id_put**
> Location system_locations_id_put(id, location)



Replace Location

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

api_instance = ConnectWise::LocationsApi.new

id = 56 # Integer | 

location = ConnectWise::Location.new # Location | 


begin
  result = api_instance.system_locations_id_put(id, location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location** | [**Location**](Location.md)|  | 

### Return type

[**Location**](Location.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_locations_post**
> Location system_locations_post(location)



Create Location

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

api_instance = ConnectWise::LocationsApi.new

location = ConnectWise::Location.new # Location | 


begin
  result = api_instance.system_locations_post(location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LocationsApi->system_locations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**Location**](Location.md)|  | 

### Return type

[**Location**](Location.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



