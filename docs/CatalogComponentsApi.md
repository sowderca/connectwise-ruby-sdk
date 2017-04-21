# ConnectWise::CatalogComponentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_catalog_id_components_component_id_delete**](CatalogComponentsApi.md#procurement_catalog_id_components_component_id_delete) | **DELETE** /procurement/catalog/{id}/components/{componentId} | 
[**procurement_catalog_id_components_component_id_get**](CatalogComponentsApi.md#procurement_catalog_id_components_component_id_get) | **GET** /procurement/catalog/{id}/components/{componentId} | 
[**procurement_catalog_id_components_component_id_patch**](CatalogComponentsApi.md#procurement_catalog_id_components_component_id_patch) | **PATCH** /procurement/catalog/{id}/components/{componentId} | 
[**procurement_catalog_id_components_component_id_put**](CatalogComponentsApi.md#procurement_catalog_id_components_component_id_put) | **PUT** /procurement/catalog/{id}/components/{componentId} | 
[**procurement_catalog_id_components_count_get**](CatalogComponentsApi.md#procurement_catalog_id_components_count_get) | **GET** /procurement/catalog/{id}/components/count | 
[**procurement_catalog_id_components_get**](CatalogComponentsApi.md#procurement_catalog_id_components_get) | **GET** /procurement/catalog/{id}/components | 
[**procurement_catalog_id_components_post**](CatalogComponentsApi.md#procurement_catalog_id_components_post) | **POST** /procurement/catalog/{id}/components | 


# **procurement_catalog_id_components_component_id_delete**
> procurement_catalog_id_components_component_id_delete(id, component_id)



Delete Catalog Component By Id

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 


begin
  api_instance.procurement_catalog_id_components_component_id_delete(id, component_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_component_id_delete: #{e}"
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



# **procurement_catalog_id_components_component_id_get**
> CatalogComponent procurement_catalog_id_components_component_id_get(id, component_id)



Get Catalog Component By Id

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 


begin
  result = api_instance.procurement_catalog_id_components_component_id_get(id, component_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_component_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 

### Return type

[**CatalogComponent**](CatalogComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_catalog_id_components_component_id_patch**
> CatalogComponent procurement_catalog_id_components_component_id_patch(id, component_id, operations)



Update Catalog Component

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_catalog_id_components_component_id_patch(id, component_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_component_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CatalogComponent**](CatalogComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_catalog_id_components_component_id_put**
> CatalogComponent procurement_catalog_id_components_component_id_put(id, component_id, catalog_component)



Replace Catalog Component

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

component_id = 56 # Integer | 

catalog_component = ConnectWise::CatalogComponent.new # CatalogComponent | 


begin
  result = api_instance.procurement_catalog_id_components_component_id_put(id, component_id, catalog_component)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_component_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **component_id** | **Integer**|  | 
 **catalog_component** | [**CatalogComponent**](CatalogComponent.md)|  | 

### Return type

[**CatalogComponent**](CatalogComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_catalog_id_components_count_get**
> Count procurement_catalog_id_components_count_get(id, opts)



Get Catalog Components Count

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_catalog_id_components_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_count_get: #{e}"
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



# **procurement_catalog_id_components_get**
> Array&lt;CatalogComponent&gt; procurement_catalog_id_components_get(id, opts)



Get Catalog Components

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

api_instance = ConnectWise::CatalogComponentsApi.new

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
  result = api_instance.procurement_catalog_id_components_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_get: #{e}"
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

[**Array&lt;CatalogComponent&gt;**](CatalogComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_catalog_id_components_post**
> CatalogComponent procurement_catalog_id_components_post(id, catalog_component)



Create Catalog Component

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

api_instance = ConnectWise::CatalogComponentsApi.new

id = 56 # Integer | 

catalog_component = ConnectWise::CatalogComponent.new # CatalogComponent | 


begin
  result = api_instance.procurement_catalog_id_components_post(id, catalog_component)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CatalogComponentsApi->procurement_catalog_id_components_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **catalog_component** | [**CatalogComponent**](CatalogComponent.md)|  | 

### Return type

[**CatalogComponent**](CatalogComponent.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



