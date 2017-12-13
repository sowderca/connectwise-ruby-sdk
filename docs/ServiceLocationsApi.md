# ConnectWise::ServiceLocationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_locations_count_get**](ServiceLocationsApi.md#service_locations_count_get) | **GET** /service/locations/count | 
[**service_locations_get**](ServiceLocationsApi.md#service_locations_get) | **GET** /service/locations | 
[**service_locations_id_delete**](ServiceLocationsApi.md#service_locations_id_delete) | **DELETE** /service/locations/{id} | 
[**service_locations_id_get**](ServiceLocationsApi.md#service_locations_id_get) | **GET** /service/locations/{id} | 
[**service_locations_id_patch**](ServiceLocationsApi.md#service_locations_id_patch) | **PATCH** /service/locations/{id} | 
[**service_locations_id_put**](ServiceLocationsApi.md#service_locations_id_put) | **PUT** /service/locations/{id} | 
[**service_locations_post**](ServiceLocationsApi.md#service_locations_post) | **POST** /service/locations | 


# **service_locations_count_get**
> Count service_locations_count_get(opts)



Create Locations Count

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

api_instance = ConnectWise::ServiceLocationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_locations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_count_get: #{e}"
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



# **service_locations_get**
> Array&lt;ServiceLocation&gt; service_locations_get(opts)



Get Locations

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

api_instance = ConnectWise::ServiceLocationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_locations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_get: #{e}"
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

[**Array&lt;ServiceLocation&gt;**](ServiceLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_locations_id_delete**
> service_locations_id_delete(id)



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

api_instance = ConnectWise::ServiceLocationsApi.new

id = 56 # Integer | 


begin
  api_instance.service_locations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_id_delete: #{e}"
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



# **service_locations_id_get**
> ServiceLocation service_locations_id_get(id)



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

api_instance = ConnectWise::ServiceLocationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_locations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ServiceLocation**](ServiceLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_locations_id_patch**
> ServiceLocation service_locations_id_patch(id, operations)



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

api_instance = ConnectWise::ServiceLocationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_locations_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceLocation**](ServiceLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_locations_id_put**
> ServiceLocation service_locations_id_put(id, location)



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

api_instance = ConnectWise::ServiceLocationsApi.new

id = 56 # Integer | 

location = ConnectWise::ServiceLocation.new # ServiceLocation | 


begin
  result = api_instance.service_locations_id_put(id, location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location** | [**ServiceLocation**](ServiceLocation.md)|  | 

### Return type

[**ServiceLocation**](ServiceLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_locations_post**
> ServiceLocation service_locations_post(location)



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

api_instance = ConnectWise::ServiceLocationsApi.new

location = ConnectWise::ServiceLocation.new # ServiceLocation | 


begin
  result = api_instance.service_locations_post(location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceLocationsApi->service_locations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**ServiceLocation**](ServiceLocation.md)|  | 

### Return type

[**ServiceLocation**](ServiceLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



