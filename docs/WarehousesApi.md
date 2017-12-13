# ConnectWise::WarehousesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_warehouses_count_get**](WarehousesApi.md#procurement_warehouses_count_get) | **GET** /procurement/warehouses/count | 
[**procurement_warehouses_get**](WarehousesApi.md#procurement_warehouses_get) | **GET** /procurement/warehouses | 
[**procurement_warehouses_id_delete**](WarehousesApi.md#procurement_warehouses_id_delete) | **DELETE** /procurement/warehouses/{id} | 
[**procurement_warehouses_id_get**](WarehousesApi.md#procurement_warehouses_id_get) | **GET** /procurement/warehouses/{id} | 
[**procurement_warehouses_id_patch**](WarehousesApi.md#procurement_warehouses_id_patch) | **PATCH** /procurement/warehouses/{id} | 
[**procurement_warehouses_id_put**](WarehousesApi.md#procurement_warehouses_id_put) | **PUT** /procurement/warehouses/{id} | 
[**procurement_warehouses_post**](WarehousesApi.md#procurement_warehouses_post) | **POST** /procurement/warehouses | 


# **procurement_warehouses_count_get**
> Count procurement_warehouses_count_get(opts)



Get Warehouse Count

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

api_instance = ConnectWise::WarehousesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_warehouses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_count_get: #{e}"
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



# **procurement_warehouses_get**
> Array&lt;Warehouse&gt; procurement_warehouses_get(opts)



Get Warehouse

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

api_instance = ConnectWise::WarehousesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_warehouses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_get: #{e}"
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

[**Array&lt;Warehouse&gt;**](Warehouse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_warehouses_id_delete**
> procurement_warehouses_id_delete(id)



Delete Warehouse By Id

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

api_instance = ConnectWise::WarehousesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_warehouses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_id_delete: #{e}"
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



# **procurement_warehouses_id_get**
> Warehouse procurement_warehouses_id_get(id)



Get Warehouse By Id

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

api_instance = ConnectWise::WarehousesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_warehouses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_warehouses_id_patch**
> Warehouse procurement_warehouses_id_patch(id, operations)



Update Warehouse

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

api_instance = ConnectWise::WarehousesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_warehouses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_warehouses_id_put**
> Warehouse procurement_warehouses_id_put(id, warehouse)



Replace Warehouse

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

api_instance = ConnectWise::WarehousesApi.new

id = 56 # Integer | 

warehouse = ConnectWise::Warehouse.new # Warehouse | 


begin
  result = api_instance.procurement_warehouses_id_put(id, warehouse)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **warehouse** | [**Warehouse**](Warehouse.md)|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_warehouses_post**
> Warehouse procurement_warehouses_post(warehouse)



Create Warehouse

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

api_instance = ConnectWise::WarehousesApi.new

warehouse = ConnectWise::Warehouse.new # Warehouse | 


begin
  result = api_instance.procurement_warehouses_post(warehouse)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WarehousesApi->procurement_warehouses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse** | [**Warehouse**](Warehouse.md)|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



