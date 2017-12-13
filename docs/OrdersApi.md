# ConnectWise::OrdersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_orders_count_get**](OrdersApi.md#sales_orders_count_get) | **GET** /sales/orders/count | 
[**sales_orders_get**](OrdersApi.md#sales_orders_get) | **GET** /sales/orders | 
[**sales_orders_id_delete**](OrdersApi.md#sales_orders_id_delete) | **DELETE** /sales/orders/{id} | 
[**sales_orders_id_get**](OrdersApi.md#sales_orders_id_get) | **GET** /sales/orders/{id} | 
[**sales_orders_id_patch**](OrdersApi.md#sales_orders_id_patch) | **PATCH** /sales/orders/{id} | 
[**sales_orders_id_put**](OrdersApi.md#sales_orders_id_put) | **PUT** /sales/orders/{id} | 
[**sales_orders_post**](OrdersApi.md#sales_orders_post) | **POST** /sales/orders | 


# **sales_orders_count_get**
> Count sales_orders_count_get(opts)



Get Sales Orders Count

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

api_instance = ConnectWise::OrdersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.sales_orders_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_get**
> Array&lt;Order&gt; sales_orders_get(opts)



Get Sales Orders

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

api_instance = ConnectWise::OrdersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_orders_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_get: #{e}"
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

[**Array&lt;Order&gt;**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_id_delete**
> sales_orders_id_delete(id)



Delete Sales Order By Id

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

api_instance = ConnectWise::OrdersApi.new

id = 56 # Integer | 


begin
  api_instance.sales_orders_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_id_delete: #{e}"
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



# **sales_orders_id_get**
> Order sales_orders_id_get(id)



Get Sales Order By Id

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

api_instance = ConnectWise::OrdersApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_orders_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_id_patch**
> Order sales_orders_id_patch(id, operations)



Update Sales Order

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

api_instance = ConnectWise::OrdersApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_orders_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_id_put**
> Order sales_orders_id_put(id, order)



Replace Sales Order

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

api_instance = ConnectWise::OrdersApi.new

id = 56 # Integer | 

order = ConnectWise::Order.new # Order | 


begin
  result = api_instance.sales_orders_id_put(id, order)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **order** | [**Order**](Order.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_post**
> Array&lt;Order&gt; sales_orders_post(order)



Create Sales Order

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

api_instance = ConnectWise::OrdersApi.new

order = ConnectWise::Order.new # Order | 


begin
  result = api_instance.sales_orders_post(order)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrdersApi->sales_orders_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**Order**](Order.md)|  | 

### Return type

[**Array&lt;Order&gt;**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



