# ConnectWise::InOutTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_in_out_types_count_get**](InOutTypesApi.md#system_in_out_types_count_get) | **GET** /system/inOutTypes/count | 
[**system_in_out_types_get**](InOutTypesApi.md#system_in_out_types_get) | **GET** /system/inOutTypes | 
[**system_in_out_types_id_delete**](InOutTypesApi.md#system_in_out_types_id_delete) | **DELETE** /system/inOutTypes/{id} | 
[**system_in_out_types_id_get**](InOutTypesApi.md#system_in_out_types_id_get) | **GET** /system/inOutTypes/{id} | 
[**system_in_out_types_id_patch**](InOutTypesApi.md#system_in_out_types_id_patch) | **PATCH** /system/inOutTypes/{id} | 
[**system_in_out_types_id_put**](InOutTypesApi.md#system_in_out_types_id_put) | **PUT** /system/inOutTypes/{id} | 
[**system_in_out_types_post**](InOutTypesApi.md#system_in_out_types_post) | **POST** /system/inOutTypes | 


# **system_in_out_types_count_get**
> Count system_in_out_types_count_get(opts)



Get In Out Type Count

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

api_instance = ConnectWise::InOutTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_in_out_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_count_get: #{e}"
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



# **system_in_out_types_get**
> Array&lt;InOutType&gt; system_in_out_types_get(opts)



Get In Out Type

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

api_instance = ConnectWise::InOutTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_in_out_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_get: #{e}"
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

[**Array&lt;InOutType&gt;**](InOutType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_in_out_types_id_delete**
> system_in_out_types_id_delete(id)



Delete In Out Type By Id

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

api_instance = ConnectWise::InOutTypesApi.new

id = 56 # Integer | 


begin
  api_instance.system_in_out_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_id_delete: #{e}"
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



# **system_in_out_types_id_get**
> InOutType system_in_out_types_id_get(id)



Get In Out Type By Id

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

api_instance = ConnectWise::InOutTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_in_out_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InOutType**](InOutType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_in_out_types_id_patch**
> InOutType system_in_out_types_id_patch(id, operations)



Update In Out Type

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

api_instance = ConnectWise::InOutTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_in_out_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**InOutType**](InOutType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_in_out_types_id_put**
> InOutType system_in_out_types_id_put(id, in_out_type)



Replace In Out Type

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

api_instance = ConnectWise::InOutTypesApi.new

id = 56 # Integer | 

in_out_type = ConnectWise::InOutType.new # InOutType | 


begin
  result = api_instance.system_in_out_types_id_put(id, in_out_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **in_out_type** | [**InOutType**](InOutType.md)|  | 

### Return type

[**InOutType**](InOutType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_in_out_types_post**
> InOutType system_in_out_types_post(in_out_type)



Create In Out Type

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

api_instance = ConnectWise::InOutTypesApi.new

in_out_type = ConnectWise::InOutType.new # InOutType | 


begin
  result = api_instance.system_in_out_types_post(in_out_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutTypesApi->system_in_out_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **in_out_type** | [**InOutType**](InOutType.md)|  | 

### Return type

[**InOutType**](InOutType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



