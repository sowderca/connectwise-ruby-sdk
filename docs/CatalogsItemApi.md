# Connectwise::CatalogsItemApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_catalog_catalog_item_identifier_quantity_on_hand_get**](CatalogsItemApi.md#procurement_catalog_catalog_item_identifier_quantity_on_hand_get) | **GET** /procurement/catalog/{catalogItemIdentifier}/quantityOnHand | 
[**procurement_catalog_count_get**](CatalogsItemApi.md#procurement_catalog_count_get) | **GET** /procurement/catalog/count | 
[**procurement_catalog_get**](CatalogsItemApi.md#procurement_catalog_get) | **GET** /procurement/catalog | 
[**procurement_catalog_id_delete**](CatalogsItemApi.md#procurement_catalog_id_delete) | **DELETE** /procurement/catalog/{id} | 
[**procurement_catalog_id_get**](CatalogsItemApi.md#procurement_catalog_id_get) | **GET** /procurement/catalog/{id} | 
[**procurement_catalog_id_patch**](CatalogsItemApi.md#procurement_catalog_id_patch) | **PATCH** /procurement/catalog/{id} | 
[**procurement_catalog_id_put**](CatalogsItemApi.md#procurement_catalog_id_put) | **PUT** /procurement/catalog/{id} | 
[**procurement_catalog_post**](CatalogsItemApi.md#procurement_catalog_post) | **POST** /procurement/catalog | 


# **procurement_catalog_catalog_item_identifier_quantity_on_hand_get**
> Count procurement_catalog_catalog_item_identifier_quantity_on_hand_get(catalog_item_identifier, opts)



Get Inventory Quantity On Hand

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

catalog_item_identifier = "catalog_item_identifier_example" # String | 

opts = { 
  warehouse_bin_id: 56 # Integer | 
}

begin
  result = api_instance.procurement_catalog_catalog_item_identifier_quantity_on_hand_get(catalog_item_identifier, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_catalog_item_identifier_quantity_on_hand_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_item_identifier** | **String**|  | 
 **warehouse_bin_id** | **Integer**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_catalog_count_get**
> Count procurement_catalog_count_get(opts)



Get Catalogs Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_catalog_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_count_get: #{e}"
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



# **procurement_catalog_get**
> Array&lt;CatalogItem&gt; procurement_catalog_get(opts)



Get Catalogs

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_catalog_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;CatalogItem&gt;**](CatalogItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_catalog_id_delete**
> procurement_catalog_id_delete(id)



Delete Catalog By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_catalog_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_id_delete: #{e}"
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



# **procurement_catalog_id_get**
> CatalogItem procurement_catalog_id_get(id)



Get Catalog By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_catalog_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CatalogItem**](CatalogItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_catalog_id_patch**
> CatalogItem procurement_catalog_id_patch(id, operations)



Update Catalog

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_catalog_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CatalogItem**](CatalogItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_catalog_id_put**
> CatalogItem procurement_catalog_id_put(id, catalog_item)



Replace Catalog

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

id = 56 # Integer | 

catalog_item = Connectwise::CatalogItem.new # CatalogItem | 


begin
  result = api_instance.procurement_catalog_id_put(id, catalog_item)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **catalog_item** | [**CatalogItem**](CatalogItem.md)|  | 

### Return type

[**CatalogItem**](CatalogItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_catalog_post**
> CatalogItem procurement_catalog_post(catalog_item)



Create Catalog

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CatalogsItemApi.new

catalog_item = Connectwise::CatalogItem.new # CatalogItem | 


begin
  result = api_instance.procurement_catalog_post(catalog_item)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CatalogsItemApi->procurement_catalog_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_item** | [**CatalogItem**](CatalogItem.md)|  | 

### Return type

[**CatalogItem**](CatalogItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



