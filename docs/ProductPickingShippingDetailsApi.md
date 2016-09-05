# Connectwise::ProductPickingShippingDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_products_id_picking_shipping_details_count_get**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_count_get) | **GET** /procurement/products/{id}/pickingShippingDetails/count | 
[**procurement_products_id_picking_shipping_details_get**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_get) | **GET** /procurement/products/{id}/pickingShippingDetails | 
[**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete) | **DELETE** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
[**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get) | **GET** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
[**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch) | **PATCH** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
[**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put) | **PUT** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
[**procurement_products_id_picking_shipping_details_post**](ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_post) | **POST** /procurement/products/{id}/pickingShippingDetails | 


# **procurement_products_id_picking_shipping_details_count_get**
> Count procurement_products_id_picking_shipping_details_count_get(id, opts)



Get Product Picking Shipping Details Count

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_products_id_picking_shipping_details_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_count_get: #{e}"
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



# **procurement_products_id_picking_shipping_details_get**
> Array&lt;ProductPickingShippingDetail&gt; procurement_products_id_picking_shipping_details_get(id, opts)



Get Product Picking Shipping Details

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_products_id_picking_shipping_details_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ProductPickingShippingDetail&gt;**](ProductPickingShippingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete**
> procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete(id, picking_shipping_detail_id)



Delete Products By Id

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

picking_shipping_detail_id = 56 # Integer | 


begin
  api_instance.procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete(id, picking_shipping_detail_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **picking_shipping_detail_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get**
> Array&lt;ProductPickingShippingDetail&gt; procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get(id, picking_shipping_detail_id)



Get Products By Id

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

picking_shipping_detail_id = 56 # Integer | 


begin
  result = api_instance.procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get(id, picking_shipping_detail_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **picking_shipping_detail_id** | **Integer**|  | 

### Return type

[**Array&lt;ProductPickingShippingDetail&gt;**](ProductPickingShippingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch**
> Array&lt;ProductPickingShippingDetail&gt; procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch(id, picking_shipping_detail_id, operations)



Update Products

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

picking_shipping_detail_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch(id, picking_shipping_detail_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **picking_shipping_detail_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Array&lt;ProductPickingShippingDetail&gt;**](ProductPickingShippingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put**
> Array&lt;ProductPickingShippingDetail&gt; procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put(id, picking_shipping_detail_id, product_picking_shipping_details)



Replace Products

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

picking_shipping_detail_id = 56 # Integer | 

product_picking_shipping_details = Connectwise::ProductPickingShippingDetail.new # ProductPickingShippingDetail | 


begin
  result = api_instance.procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put(id, picking_shipping_detail_id, product_picking_shipping_details)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **picking_shipping_detail_id** | **Integer**|  | 
 **product_picking_shipping_details** | [**ProductPickingShippingDetail**](ProductPickingShippingDetail.md)|  | 

### Return type

[**Array&lt;ProductPickingShippingDetail&gt;**](ProductPickingShippingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_products_id_picking_shipping_details_post**
> Array&lt;ProductPickingShippingDetail&gt; procurement_products_id_picking_shipping_details_post(id, product_picking_shipping_details)



Create Product Picking Shipping Detail

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

api_instance = Connectwise::ProductPickingShippingDetailsApi.new

id = 56 # Integer | 

product_picking_shipping_details = Connectwise::ProductPickingShippingDetail.new # ProductPickingShippingDetail | 


begin
  result = api_instance.procurement_products_id_picking_shipping_details_post(id, product_picking_shipping_details)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProductPickingShippingDetailsApi->procurement_products_id_picking_shipping_details_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **product_picking_shipping_details** | [**ProductPickingShippingDetail**](ProductPickingShippingDetail.md)|  | 

### Return type

[**Array&lt;ProductPickingShippingDetail&gt;**](ProductPickingShippingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



