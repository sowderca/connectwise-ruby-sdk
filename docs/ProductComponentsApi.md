# ConnectWise::ProductComponentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_products_id_components_component_id_delete**](ProductComponentsApi.md#procurement_products_id_components_component_id_delete) | **DELETE** /procurement/products/{id}/components/{componentId} | 
[**procurement_products_id_components_component_id_get**](ProductComponentsApi.md#procurement_products_id_components_component_id_get) | **GET** /procurement/products/{id}/components/{componentId} | 
[**procurement_products_id_components_component_id_patch**](ProductComponentsApi.md#procurement_products_id_components_component_id_patch) | **PATCH** /procurement/products/{id}/components/{componentId} | 
[**procurement_products_id_components_component_id_put**](ProductComponentsApi.md#procurement_products_id_components_component_id_put) | **PUT** /procurement/products/{id}/components/{componentId} | 
[**procurement_products_id_components_count_get**](ProductComponentsApi.md#procurement_products_id_components_count_get) | **GET** /procurement/products/{id}/components/count | 
[**procurement_products_id_components_get**](ProductComponentsApi.md#procurement_products_id_components_get) | **GET** /procurement/products/{id}/components | 
[**procurement_products_id_components_post**](ProductComponentsApi.md#procurement_products_id_components_post) | **POST** /procurement/products/{id}/components | 


# **procurement_products_id_components_component_id_delete**
> procurement_products_id_components_component_id_delete(id, component_id)



Delete Product Component By Id

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 


begin
  api_instance.procurement_products_id_components_component_id_delete(id, component_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_component_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_products_id_components_component_id_get**
> Array&lt;ProductComponent&gt; procurement_products_id_components_component_id_get(id, component_id)



Get Product Component By Id

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 


begin
  result = api_instance.procurement_products_id_components_component_id_get(id, component_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_component_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 

### Return type

[**Array&lt;ProductComponent&gt;**](ProductComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_components_component_id_patch**
> Array&lt;ProductComponent&gt; procurement_products_id_components_component_id_patch(id, component_id, operations)



Update Product Component

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_products_id_components_component_id_patch(id, component_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_component_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Array&lt;ProductComponent&gt;**](ProductComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_id_components_component_id_put**
> Array&lt;ProductComponent&gt; procurement_products_id_components_component_id_put(id, component_id, product_component)



Replace Product Component

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 

product_component = ConnectWise::ProductComponent.new # ProductComponent | 


begin
  result = api_instance.procurement_products_id_components_component_id_put(id, component_id, product_component)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_component_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 
 **product_component** | [**ProductComponent**](ProductComponent.md)|  | 

### Return type

[**Array&lt;ProductComponent&gt;**](ProductComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_id_components_count_get**
> Count procurement_products_id_components_count_get(id, opts)



Get Product Components Count

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_products_id_components_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_count_get: #{e}"
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



# **procurement_products_id_components_get**
> Array&lt;ProductComponent&gt; procurement_products_id_components_get(id, opts)



Get Product Components

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_products_id_components_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_get: #{e}"
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

[**Array&lt;ProductComponent&gt;**](ProductComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_components_post**
> Array&lt;ProductComponent&gt; procurement_products_id_components_post(id, product_component)



Create Product Component

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

api_instance = ConnectWise::ProductComponentsApi.new

id = 56 # Integer | 

product_component = ConnectWise::ProductComponent.new # ProductComponent | 


begin
  result = api_instance.procurement_products_id_components_post(id, product_component)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductComponentsApi->procurement_products_id_components_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **product_component** | [**ProductComponent**](ProductComponent.md)|  | 

### Return type

[**Array&lt;ProductComponent&gt;**](ProductComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



