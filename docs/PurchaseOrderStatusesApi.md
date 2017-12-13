# ConnectWise::PurchaseOrderStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_purchaseorderstatuses_count_get**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_count_get) | **GET** /procurement/purchaseorderstatuses/count | 
[**procurement_purchaseorderstatuses_get**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_get) | **GET** /procurement/purchaseorderstatuses | 
[**procurement_purchaseorderstatuses_id_delete**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id} | 
[**procurement_purchaseorderstatuses_id_get**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_get) | **GET** /procurement/purchaseorderstatuses/{id} | 
[**procurement_purchaseorderstatuses_id_patch**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id} | 
[**procurement_purchaseorderstatuses_id_put**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_put) | **PUT** /procurement/purchaseorderstatuses/{id} | 
[**procurement_purchaseorderstatuses_post**](PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_post) | **POST** /procurement/purchaseorderstatuses | 


# **procurement_purchaseorderstatuses_count_get**
> Count procurement_purchaseorderstatuses_count_get(opts)



Get Purchase Orders Statuses Count

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_purchaseorderstatuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_count_get: #{e}"
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



# **procurement_purchaseorderstatuses_get**
> Array&lt;PurchaseOrderStatus&gt; procurement_purchaseorderstatuses_get(opts)



Get Purchase Order Statuses

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_purchaseorderstatuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_get: #{e}"
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

[**Array&lt;PurchaseOrderStatus&gt;**](PurchaseOrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_delete**
> procurement_purchaseorderstatuses_id_delete(id)



Delete Purchase Order Status

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_purchaseorderstatuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_id_delete: #{e}"
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



# **procurement_purchaseorderstatuses_id_get**
> PurchaseOrderStatus procurement_purchaseorderstatuses_id_get(id)



Get Purchase Order Status By Id

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PurchaseOrderStatus**](PurchaseOrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_patch**
> PurchaseOrderStatus procurement_purchaseorderstatuses_id_patch(id, operations)



Update Purchase Order Status

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PurchaseOrderStatus**](PurchaseOrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_put**
> PurchaseOrderStatus procurement_purchaseorderstatuses_id_put(id, purchase_order_status)



Replace Purchase Order Status

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

id = 56 # Integer | 

purchase_order_status = ConnectWise::PurchaseOrderStatus.new # PurchaseOrderStatus | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_put(id, purchase_order_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchase_order_status** | [**PurchaseOrderStatus**](PurchaseOrderStatus.md)|  | 

### Return type

[**PurchaseOrderStatus**](PurchaseOrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_post**
> PurchaseOrderStatus procurement_purchaseorderstatuses_post(po_status)



Create Purchase Order Status

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

api_instance = ConnectWise::PurchaseOrderStatusesApi.new

po_status = ConnectWise::PurchaseOrderStatus.new # PurchaseOrderStatus | 


begin
  result = api_instance.procurement_purchaseorderstatuses_post(po_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusesApi->procurement_purchaseorderstatuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **po_status** | [**PurchaseOrderStatus**](PurchaseOrderStatus.md)|  | 

### Return type

[**PurchaseOrderStatus**](PurchaseOrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



