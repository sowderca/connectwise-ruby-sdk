# ConnectWise::WarehouseBinsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_warehouse_bins_count_get**](WarehouseBinsApi.md#procurement_warehouse_bins_count_get) | **GET** /procurement/warehouseBins/count | 
[**procurement_warehouse_bins_get**](WarehouseBinsApi.md#procurement_warehouse_bins_get) | **GET** /procurement/warehouseBins | 
[**procurement_warehouse_bins_id_delete**](WarehouseBinsApi.md#procurement_warehouse_bins_id_delete) | **DELETE** /procurement/warehouseBins/{id} | 
[**procurement_warehouse_bins_id_get**](WarehouseBinsApi.md#procurement_warehouse_bins_id_get) | **GET** /procurement/warehouseBins/{id} | 
[**procurement_warehouse_bins_id_patch**](WarehouseBinsApi.md#procurement_warehouse_bins_id_patch) | **PATCH** /procurement/warehouseBins/{id} | 
[**procurement_warehouse_bins_id_put**](WarehouseBinsApi.md#procurement_warehouse_bins_id_put) | **PUT** /procurement/warehouseBins/{id} | 
[**procurement_warehouse_bins_post**](WarehouseBinsApi.md#procurement_warehouse_bins_post) | **POST** /procurement/warehouseBins | 


# **procurement_warehouse_bins_count_get**
> Count procurement_warehouse_bins_count_get(opts)



Get Warehouse Bin Count

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

api_instance = ConnectWise::WarehouseBinsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_warehouse_bins_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_count_get: #{e}"
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



# **procurement_warehouse_bins_get**
> Array&lt;WarehouseBin&gt; procurement_warehouse_bins_get(opts)



Get Warehouse Bin

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

api_instance = ConnectWise::WarehouseBinsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_warehouse_bins_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_get: #{e}"
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

[**Array&lt;WarehouseBin&gt;**](WarehouseBin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_warehouse_bins_id_delete**
> procurement_warehouse_bins_id_delete(id)



Delete Warehouse Bin By Id

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

api_instance = ConnectWise::WarehouseBinsApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_warehouse_bins_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_id_delete: #{e}"
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



# **procurement_warehouse_bins_id_get**
> WarehouseBin procurement_warehouse_bins_id_get(id)



Get Warehouse Bin By Id

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

api_instance = ConnectWise::WarehouseBinsApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_warehouse_bins_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**WarehouseBin**](WarehouseBin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_warehouse_bins_id_patch**
> WarehouseBin procurement_warehouse_bins_id_patch(id, operations)



Update Warehouse Bin

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

api_instance = ConnectWise::WarehouseBinsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_warehouse_bins_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WarehouseBin**](WarehouseBin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_warehouse_bins_id_put**
> WarehouseBin procurement_warehouse_bins_id_put(id, warehouse_bin)



Replace Warehouse Bin

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

api_instance = ConnectWise::WarehouseBinsApi.new

id = 56 # Integer | 

warehouse_bin = ConnectWise::WarehouseBin.new # WarehouseBin | 


begin
  result = api_instance.procurement_warehouse_bins_id_put(id, warehouse_bin)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **warehouse_bin** | [**WarehouseBin**](WarehouseBin.md)|  | 

### Return type

[**WarehouseBin**](WarehouseBin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_warehouse_bins_post**
> WarehouseBin procurement_warehouse_bins_post(warehouse_bin)



Create Warehouse Bin

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

api_instance = ConnectWise::WarehouseBinsApi.new

warehouse_bin = ConnectWise::WarehouseBin.new # WarehouseBin | 


begin
  result = api_instance.procurement_warehouse_bins_post(warehouse_bin)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehouseBinsApi->procurement_warehouse_bins_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_bin** | [**WarehouseBin**](WarehouseBin.md)|  | 

### Return type

[**WarehouseBin**](WarehouseBin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



