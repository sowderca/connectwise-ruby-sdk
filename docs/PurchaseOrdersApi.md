# ConnectWise::PurchaseOrdersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_purchaseorders_count_get**](PurchaseOrdersApi.md#procurement_purchaseorders_count_get) | **GET** /procurement/purchaseorders/count | 
[**procurement_purchaseorders_get**](PurchaseOrdersApi.md#procurement_purchaseorders_get) | **GET** /procurement/purchaseorders | 
[**procurement_purchaseorders_id_delete**](PurchaseOrdersApi.md#procurement_purchaseorders_id_delete) | **DELETE** /procurement/purchaseorders/{id} | 
[**procurement_purchaseorders_id_get**](PurchaseOrdersApi.md#procurement_purchaseorders_id_get) | **GET** /procurement/purchaseorders/{id} | 
[**procurement_purchaseorders_id_patch**](PurchaseOrdersApi.md#procurement_purchaseorders_id_patch) | **PATCH** /procurement/purchaseorders/{id} | 
[**procurement_purchaseorders_id_put**](PurchaseOrdersApi.md#procurement_purchaseorders_id_put) | **PUT** /procurement/purchaseorders/{id} | 
[**procurement_purchaseorders_post**](PurchaseOrdersApi.md#procurement_purchaseorders_post) | **POST** /procurement/purchaseorders | 


# **procurement_purchaseorders_count_get**
> Count procurement_purchaseorders_count_get(opts)



Get Purchase Orders Count

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

api_instance = ConnectWise::PurchaseOrdersApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_purchaseorders_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_count_get: #{e}"
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



# **procurement_purchaseorders_get**
> Array&lt;PurchaseOrder&gt; procurement_purchaseorders_get(opts)



Get Purchase Orders

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

api_instance = ConnectWise::PurchaseOrdersApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_purchaseorders_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_get: #{e}"
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

[**Array&lt;PurchaseOrder&gt;**](PurchaseOrder.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorders_id_delete**
> procurement_purchaseorders_id_delete(id)



Delete Purchase Order By Id

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

api_instance = ConnectWise::PurchaseOrdersApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_purchaseorders_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_id_delete: #{e}"
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



# **procurement_purchaseorders_id_get**
> PurchaseOrder procurement_purchaseorders_id_get(id)



Get Purchase Order By Id

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

api_instance = ConnectWise::PurchaseOrdersApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_purchaseorders_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorders_id_patch**
> PurchaseOrder procurement_purchaseorders_id_patch(id, operations)



Update Purchase Order

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

api_instance = ConnectWise::PurchaseOrdersApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_purchaseorders_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorders_id_put**
> PurchaseOrder procurement_purchaseorders_id_put(id, purchase_order)



Replace Purchase Order

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

api_instance = ConnectWise::PurchaseOrdersApi.new

id = 56 # Integer | 

purchase_order = ConnectWise::PurchaseOrder.new # PurchaseOrder | 


begin
  result = api_instance.procurement_purchaseorders_id_put(id, purchase_order)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchase_order** | [**PurchaseOrder**](PurchaseOrder.md)|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorders_post**
> PurchaseOrder procurement_purchaseorders_post(purchase_order)



Create Purchase Order

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

api_instance = ConnectWise::PurchaseOrdersApi.new

purchase_order = ConnectWise::PurchaseOrder.new # PurchaseOrder | 


begin
  result = api_instance.procurement_purchaseorders_post(purchase_order)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->procurement_purchaseorders_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order** | [**PurchaseOrder**](PurchaseOrder.md)|  | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



