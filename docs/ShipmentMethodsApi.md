# ConnectWise::ShipmentMethodsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_shipmentmethods_count_get**](ShipmentMethodsApi.md#procurement_shipmentmethods_count_get) | **GET** /procurement/shipmentmethods/count | 
[**procurement_shipmentmethods_get**](ShipmentMethodsApi.md#procurement_shipmentmethods_get) | **GET** /procurement/shipmentmethods | 
[**procurement_shipmentmethods_id_delete**](ShipmentMethodsApi.md#procurement_shipmentmethods_id_delete) | **DELETE** /procurement/shipmentmethods/{id} | 
[**procurement_shipmentmethods_id_get**](ShipmentMethodsApi.md#procurement_shipmentmethods_id_get) | **GET** /procurement/shipmentmethods/{id} | 
[**procurement_shipmentmethods_id_patch**](ShipmentMethodsApi.md#procurement_shipmentmethods_id_patch) | **PATCH** /procurement/shipmentmethods/{id} | 
[**procurement_shipmentmethods_id_put**](ShipmentMethodsApi.md#procurement_shipmentmethods_id_put) | **PUT** /procurement/shipmentmethods/{id} | 
[**procurement_shipmentmethods_post**](ShipmentMethodsApi.md#procurement_shipmentmethods_post) | **POST** /procurement/shipmentmethods | 


# **procurement_shipmentmethods_count_get**
> Count procurement_shipmentmethods_count_get(opts)



Get Shipment Methods Count

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

api_instance = ConnectWise::ShipmentMethodsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_shipmentmethods_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_count_get: #{e}"
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



# **procurement_shipmentmethods_get**
> Array&lt;ShipmentMethod&gt; procurement_shipmentmethods_get(opts)



Get Shipment Methods

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

api_instance = ConnectWise::ShipmentMethodsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_shipmentmethods_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_get: #{e}"
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

[**Array&lt;ShipmentMethod&gt;**](ShipmentMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_shipmentmethods_id_delete**
> procurement_shipmentmethods_id_delete(id)



Delete Shipment Method By Id

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

api_instance = ConnectWise::ShipmentMethodsApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_shipmentmethods_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_id_delete: #{e}"
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



# **procurement_shipmentmethods_id_get**
> ShipmentMethod procurement_shipmentmethods_id_get(id)



Get Shipment Method By Id

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

api_instance = ConnectWise::ShipmentMethodsApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_shipmentmethods_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ShipmentMethod**](ShipmentMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_shipmentmethods_id_patch**
> ShipmentMethod procurement_shipmentmethods_id_patch(id, operations)



Update Shipment Method

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

api_instance = ConnectWise::ShipmentMethodsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_shipmentmethods_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ShipmentMethod**](ShipmentMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_shipmentmethods_id_put**
> ShipmentMethod procurement_shipmentmethods_id_put(id, shipment_method)



Replace Shipment Method

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

api_instance = ConnectWise::ShipmentMethodsApi.new

id = 56 # Integer | 

shipment_method = ConnectWise::ShipmentMethod.new # ShipmentMethod | 


begin
  result = api_instance.procurement_shipmentmethods_id_put(id, shipment_method)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **shipment_method** | [**ShipmentMethod**](ShipmentMethod.md)|  | 

### Return type

[**ShipmentMethod**](ShipmentMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_shipmentmethods_post**
> ShipmentMethod procurement_shipmentmethods_post(shipment_method)



Create Shipment Method

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

api_instance = ConnectWise::ShipmentMethodsApi.new

shipment_method = ConnectWise::ShipmentMethod.new # ShipmentMethod | 


begin
  result = api_instance.procurement_shipmentmethods_post(shipment_method)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ShipmentMethodsApi->procurement_shipmentmethods_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_method** | [**ShipmentMethod**](ShipmentMethod.md)|  | 

### Return type

[**ShipmentMethod**](ShipmentMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



