# ConnectWise::ProductsItemApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_products_count_get**](ProductsItemApi.md#procurement_products_count_get) | **GET** /procurement/products/count | 
[**procurement_products_get**](ProductsItemApi.md#procurement_products_get) | **GET** /procurement/products | 
[**procurement_products_id_delete**](ProductsItemApi.md#procurement_products_id_delete) | **DELETE** /procurement/products/{id} | 
[**procurement_products_id_get**](ProductsItemApi.md#procurement_products_id_get) | **GET** /procurement/products/{id} | 
[**procurement_products_id_patch**](ProductsItemApi.md#procurement_products_id_patch) | **PATCH** /procurement/products/{id} | 
[**procurement_products_id_put**](ProductsItemApi.md#procurement_products_id_put) | **PUT** /procurement/products/{id} | 
[**procurement_products_post**](ProductsItemApi.md#procurement_products_post) | **POST** /procurement/products | 


# **procurement_products_count_get**
> Count procurement_products_count_get(opts)



Get Products Count

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

api_instance = ConnectWise::ProductsItemApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_products_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_count_get: #{e}"
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



# **procurement_products_get**
> Array&lt;ProductItem&gt; procurement_products_get(opts)



Get Products

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

api_instance = ConnectWise::ProductsItemApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_products_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_get: #{e}"
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

[**Array&lt;ProductItem&gt;**](ProductItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_delete**
> procurement_products_id_delete(id)



Delete Product By Id

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

api_instance = ConnectWise::ProductsItemApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_products_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_id_delete: #{e}"
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



# **procurement_products_id_get**
> ProductItem procurement_products_id_get(id)



Get Product By Id

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

api_instance = ConnectWise::ProductsItemApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_products_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ProductItem**](ProductItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_patch**
> ProductItem procurement_products_id_patch(id, operations)



Update Product

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

api_instance = ConnectWise::ProductsItemApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_products_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProductItem**](ProductItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_id_put**
> ProductItem procurement_products_id_put(id, product_item)



Replace Product

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

api_instance = ConnectWise::ProductsItemApi.new

id = 56 # Integer | 

product_item = ConnectWise::ProductItem.new # ProductItem | 


begin
  result = api_instance.procurement_products_id_put(id, product_item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **product_item** | [**ProductItem**](ProductItem.md)|  | 

### Return type

[**ProductItem**](ProductItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_post**
> ProductItem procurement_products_post(product_item)



Create Product

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

api_instance = ConnectWise::ProductsItemApi.new

product_item = ConnectWise::ProductItem.new # ProductItem | 


begin
  result = api_instance.procurement_products_post(product_item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsItemApi->procurement_products_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_item** | [**ProductItem**](ProductItem.md)|  | 

### Return type

[**ProductItem**](ProductItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



