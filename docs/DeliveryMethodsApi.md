# ConnectWise::DeliveryMethodsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_delivery_methods_count_get**](DeliveryMethodsApi.md#finance_delivery_methods_count_get) | **GET** /finance/deliveryMethods/count | 
[**finance_delivery_methods_get**](DeliveryMethodsApi.md#finance_delivery_methods_get) | **GET** /finance/deliveryMethods | 
[**finance_delivery_methods_id_delete**](DeliveryMethodsApi.md#finance_delivery_methods_id_delete) | **DELETE** /finance/deliveryMethods/{id} | 
[**finance_delivery_methods_id_get**](DeliveryMethodsApi.md#finance_delivery_methods_id_get) | **GET** /finance/deliveryMethods/{id} | 
[**finance_delivery_methods_id_patch**](DeliveryMethodsApi.md#finance_delivery_methods_id_patch) | **PATCH** /finance/deliveryMethods/{id} | 
[**finance_delivery_methods_id_put**](DeliveryMethodsApi.md#finance_delivery_methods_id_put) | **PUT** /finance/deliveryMethods/{id} | 
[**finance_delivery_methods_post**](DeliveryMethodsApi.md#finance_delivery_methods_post) | **POST** /finance/deliveryMethods | 


# **finance_delivery_methods_count_get**
> Count finance_delivery_methods_count_get(opts)



Get Delivery Method Count

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

api_instance = ConnectWise::DeliveryMethodsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_delivery_methods_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_count_get: #{e}"
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



# **finance_delivery_methods_get**
> Array&lt;DeliveryMethod&gt; finance_delivery_methods_get(opts)



Get Delivery Method

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

api_instance = ConnectWise::DeliveryMethodsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_delivery_methods_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_get: #{e}"
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

[**Array&lt;DeliveryMethod&gt;**](DeliveryMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_delivery_methods_id_delete**
> finance_delivery_methods_id_delete(id)



Delete Delivery Method By Id

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

api_instance = ConnectWise::DeliveryMethodsApi.new

id = 56 # Integer | 


begin
  api_instance.finance_delivery_methods_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_id_delete: #{e}"
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



# **finance_delivery_methods_id_get**
> DeliveryMethod finance_delivery_methods_id_get(id)



Get Delivery Method By Id

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

api_instance = ConnectWise::DeliveryMethodsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_delivery_methods_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**DeliveryMethod**](DeliveryMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_delivery_methods_id_patch**
> DeliveryMethod finance_delivery_methods_id_patch(id, operations)



Update Delivery Method

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

api_instance = ConnectWise::DeliveryMethodsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_delivery_methods_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**DeliveryMethod**](DeliveryMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_delivery_methods_id_put**
> DeliveryMethod finance_delivery_methods_id_put(id, delivery_method)



Replace Delivery Method

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

api_instance = ConnectWise::DeliveryMethodsApi.new

id = 56 # Integer | 

delivery_method = ConnectWise::DeliveryMethod.new # DeliveryMethod | 


begin
  result = api_instance.finance_delivery_methods_id_put(id, delivery_method)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **delivery_method** | [**DeliveryMethod**](DeliveryMethod.md)|  | 

### Return type

[**DeliveryMethod**](DeliveryMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_delivery_methods_post**
> DeliveryMethod finance_delivery_methods_post(delivery_method)



Create Delivery Method

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

api_instance = ConnectWise::DeliveryMethodsApi.new

delivery_method = ConnectWise::DeliveryMethod.new # DeliveryMethod | 


begin
  result = api_instance.finance_delivery_methods_post(delivery_method)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DeliveryMethodsApi->finance_delivery_methods_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_method** | [**DeliveryMethod**](DeliveryMethod.md)|  | 

### Return type

[**DeliveryMethod**](DeliveryMethod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



