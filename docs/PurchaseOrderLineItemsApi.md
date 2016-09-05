# Connectwise::PurchaseOrderLineItemsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_purchaseorders_id_lineitems_count_get**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_count_get) | **GET** /procurement/purchaseorders/{id}/lineitems/count | 
[**procurement_purchaseorders_id_lineitems_get**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_get) | **GET** /procurement/purchaseorders/{id}/lineitems | 
[**procurement_purchaseorders_id_lineitems_line_item_id_delete**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_delete) | **DELETE** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
[**procurement_purchaseorders_id_lineitems_line_item_id_get**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_get) | **GET** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
[**procurement_purchaseorders_id_lineitems_line_item_id_patch**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_patch) | **PATCH** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
[**procurement_purchaseorders_id_lineitems_line_item_id_put**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_put) | **PUT** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
[**procurement_purchaseorders_id_lineitems_post**](PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_post) | **POST** /procurement/purchaseorders/{id}/lineitems | 


# **procurement_purchaseorders_id_lineitems_count_get**
> Count procurement_purchaseorders_id_lineitems_count_get(id, opts)



Get Purchase Order Line Items Count

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_purchaseorders_id_lineitems_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_count_get: #{e}"
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



# **procurement_purchaseorders_id_lineitems_get**
> Array&lt;PurchaseOrderLineItem&gt; procurement_purchaseorders_id_lineitems_get(id, opts)



Get Purchase Order Line Items

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_purchaseorders_id_lineitems_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_get: #{e}"
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

[**Array&lt;PurchaseOrderLineItem&gt;**](PurchaseOrderLineItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorders_id_lineitems_line_item_id_delete**
> procurement_purchaseorders_id_lineitems_line_item_id_delete(id, line_item_id)



Delete Purchase Order Line Item By Id

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

line_item_id = 56 # Integer | 


begin
  api_instance.procurement_purchaseorders_id_lineitems_line_item_id_delete(id, line_item_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_line_item_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **line_item_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_purchaseorders_id_lineitems_line_item_id_get**
> PurchaseOrderLineItem procurement_purchaseorders_id_lineitems_line_item_id_get(id, line_item_id)



Get Purchase Order Line Item By Id

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

line_item_id = 56 # Integer | 


begin
  result = api_instance.procurement_purchaseorders_id_lineitems_line_item_id_get(id, line_item_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_line_item_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **line_item_id** | **Integer**|  | 

### Return type

[**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorders_id_lineitems_line_item_id_patch**
> PurchaseOrderLineItem procurement_purchaseorders_id_lineitems_line_item_id_patch(id, line_item_id, operations)



Update Purchase Order Line Item

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

line_item_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_purchaseorders_id_lineitems_line_item_id_patch(id, line_item_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_line_item_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **line_item_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorders_id_lineitems_line_item_id_put**
> PurchaseOrderLineItem procurement_purchaseorders_id_lineitems_line_item_id_put(id, line_item_id, purchase_order_line_item)



Replace Purchase Order Line Item

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

line_item_id = 56 # Integer | 

purchase_order_line_item = Connectwise::PurchaseOrderLineItem.new # PurchaseOrderLineItem | 


begin
  result = api_instance.procurement_purchaseorders_id_lineitems_line_item_id_put(id, line_item_id, purchase_order_line_item)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_line_item_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **line_item_id** | **Integer**|  | 
 **purchase_order_line_item** | [**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)|  | 

### Return type

[**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorders_id_lineitems_post**
> PurchaseOrderLineItem procurement_purchaseorders_id_lineitems_post(id, purchase_order_line_item)



Create Purchase Order Line Item

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

api_instance = Connectwise::PurchaseOrderLineItemsApi.new

id = 56 # Integer | 

purchase_order_line_item = Connectwise::PurchaseOrderLineItem.new # PurchaseOrderLineItem | 


begin
  result = api_instance.procurement_purchaseorders_id_lineitems_post(id, purchase_order_line_item)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PurchaseOrderLineItemsApi->procurement_purchaseorders_id_lineitems_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchase_order_line_item** | [**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)|  | 

### Return type

[**PurchaseOrderLineItem**](PurchaseOrderLineItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



