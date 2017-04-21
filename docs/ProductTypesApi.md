# ConnectWise::ProductTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_types_count_get**](ProductTypesApi.md#procurement_types_count_get) | **GET** /procurement/types/count | 
[**procurement_types_get**](ProductTypesApi.md#procurement_types_get) | **GET** /procurement/types | 
[**procurement_types_id_delete**](ProductTypesApi.md#procurement_types_id_delete) | **DELETE** /procurement/types/{id} | 
[**procurement_types_id_get**](ProductTypesApi.md#procurement_types_id_get) | **GET** /procurement/types/{id} | 
[**procurement_types_id_patch**](ProductTypesApi.md#procurement_types_id_patch) | **PATCH** /procurement/types/{id} | 
[**procurement_types_id_put**](ProductTypesApi.md#procurement_types_id_put) | **PUT** /procurement/types/{id} | 
[**procurement_types_post**](ProductTypesApi.md#procurement_types_post) | **POST** /procurement/types | 


# **procurement_types_count_get**
> Count procurement_types_count_get(opts)



Get Product Typess Count

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

api_instance = ConnectWise::ProductTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_count_get: #{e}"
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



# **procurement_types_get**
> Array&lt;ProductType&gt; procurement_types_get(opts)



Get Product Typess

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

api_instance = ConnectWise::ProductTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_get: #{e}"
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

[**Array&lt;ProductType&gt;**](ProductType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_types_id_delete**
> procurement_types_id_delete(id)



Delete Product Types By Id

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

api_instance = ConnectWise::ProductTypesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_id_delete: #{e}"
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



# **procurement_types_id_get**
> ProductType procurement_types_id_get(id)



Get Product Types By Id

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

api_instance = ConnectWise::ProductTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ProductType**](ProductType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_types_id_patch**
> ProductType procurement_types_id_patch(id, operations)



Update Product Types

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

api_instance = ConnectWise::ProductTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProductType**](ProductType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_types_id_put**
> ProductType procurement_types_id_put(id, product_types)



Replace Product Types

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

api_instance = ConnectWise::ProductTypesApi.new

id = 56 # Integer | 

product_types = ConnectWise::ProductType.new # ProductType | 


begin
  result = api_instance.procurement_types_id_put(id, product_types)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **product_types** | [**ProductType**](ProductType.md)|  | 

### Return type

[**ProductType**](ProductType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_types_post**
> ProductType procurement_types_post(product_types)



Create Product Types

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

api_instance = ConnectWise::ProductTypesApi.new

product_types = ConnectWise::ProductType.new # ProductType | 


begin
  result = api_instance.procurement_types_post(product_types)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductTypesApi->procurement_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_types** | [**ProductType**](ProductType.md)|  | 

### Return type

[**ProductType**](ProductType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



