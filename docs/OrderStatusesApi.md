# Connectwise::OrderStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_orders_statuses_count_get**](OrderStatusesApi.md#sales_orders_statuses_count_get) | **GET** /sales/orders/statuses/count | 
[**sales_orders_statuses_get**](OrderStatusesApi.md#sales_orders_statuses_get) | **GET** /sales/orders/statuses | 
[**sales_orders_statuses_id_delete**](OrderStatusesApi.md#sales_orders_statuses_id_delete) | **DELETE** /sales/orders/statuses/{id} | 
[**sales_orders_statuses_id_get**](OrderStatusesApi.md#sales_orders_statuses_id_get) | **GET** /sales/orders/statuses/{id} | 
[**sales_orders_statuses_id_patch**](OrderStatusesApi.md#sales_orders_statuses_id_patch) | **PATCH** /sales/orders/statuses/{id} | 
[**sales_orders_statuses_id_put**](OrderStatusesApi.md#sales_orders_statuses_id_put) | **PUT** /sales/orders/statuses/{id} | 
[**sales_orders_statuses_post**](OrderStatusesApi.md#sales_orders_statuses_post) | **POST** /sales/orders/statuses | 


# **sales_orders_statuses_count_get**
> Count sales_orders_statuses_count_get(opts)



Get Order Statuses Count

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

api_instance = Connectwise::OrderStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_orders_statuses_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_count_get: #{e}"
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



# **sales_orders_statuses_get**
> Array&lt;OrderStatus&gt; sales_orders_statuses_get(opts)



Get Order Statuses

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

api_instance = Connectwise::OrderStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_orders_statuses_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_get: #{e}"
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

[**Array&lt;OrderStatus&gt;**](OrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_delete**
> sales_orders_statuses_id_delete(id)



Delete Order Status By Id

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

api_instance = Connectwise::OrderStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_orders_statuses_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_id_delete: #{e}"
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



# **sales_orders_statuses_id_get**
> OrderStatus sales_orders_statuses_id_get(id)



Get Order Status By Id

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

api_instance = Connectwise::OrderStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_orders_statuses_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OrderStatus**](OrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_patch**
> OrderStatus sales_orders_statuses_id_patch(id, operations)



Update Order Status

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

api_instance = Connectwise::OrderStatusesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_orders_statuses_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OrderStatus**](OrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_id_put**
> OrderStatus sales_orders_statuses_id_put(id, status)



Replace Order Status

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

api_instance = Connectwise::OrderStatusesApi.new

id = 56 # Integer | 

status = Connectwise::OrderStatus.new # OrderStatus | 


begin
  result = api_instance.sales_orders_statuses_id_put(id, status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status** | [**OrderStatus**](OrderStatus.md)|  | 

### Return type

[**OrderStatus**](OrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_post**
> Array&lt;OrderStatus&gt; sales_orders_statuses_post(status)



Create Order Status

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

api_instance = Connectwise::OrderStatusesApi.new

status = Connectwise::OrderStatus.new # OrderStatus | 


begin
  result = api_instance.sales_orders_statuses_post(status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OrderStatusesApi->sales_orders_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**OrderStatus**](OrderStatus.md)|  | 

### Return type

[**Array&lt;OrderStatus&gt;**](OrderStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



