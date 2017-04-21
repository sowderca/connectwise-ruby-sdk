# ConnectWise::AdjustmentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_adjustments_count_get**](AdjustmentsApi.md#procurement_adjustments_count_get) | **GET** /procurement/adjustments/count | 
[**procurement_adjustments_get**](AdjustmentsApi.md#procurement_adjustments_get) | **GET** /procurement/adjustments | 
[**procurement_adjustments_id_delete**](AdjustmentsApi.md#procurement_adjustments_id_delete) | **DELETE** /procurement/adjustments/{id} | 
[**procurement_adjustments_id_get**](AdjustmentsApi.md#procurement_adjustments_id_get) | **GET** /procurement/adjustments/{id} | 
[**procurement_adjustments_id_patch**](AdjustmentsApi.md#procurement_adjustments_id_patch) | **PATCH** /procurement/adjustments/{id} | 
[**procurement_adjustments_id_put**](AdjustmentsApi.md#procurement_adjustments_id_put) | **PUT** /procurement/adjustments/{id} | 
[**procurement_adjustments_post**](AdjustmentsApi.md#procurement_adjustments_post) | **POST** /procurement/adjustments | 


# **procurement_adjustments_count_get**
> Count procurement_adjustments_count_get(opts)



Get Adjustment Count

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

api_instance = ConnectWise::AdjustmentsApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_adjustments_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_count_get: #{e}"
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



# **procurement_adjustments_get**
> Array&lt;Adjustment&gt; procurement_adjustments_get(opts)



Get Adjustment

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

api_instance = ConnectWise::AdjustmentsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_adjustments_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_get: #{e}"
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

[**Array&lt;Adjustment&gt;**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_id_delete**
> procurement_adjustments_id_delete(id)



Delete Adjustment By Id

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

api_instance = ConnectWise::AdjustmentsApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_adjustments_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_id_delete: #{e}"
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



# **procurement_adjustments_id_get**
> Adjustment procurement_adjustments_id_get(id)



Get Adjustment By Id

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

api_instance = ConnectWise::AdjustmentsApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_adjustments_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_id_patch**
> Adjustment procurement_adjustments_id_patch(id, operations)



Update Adjustment

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

api_instance = ConnectWise::AdjustmentsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_adjustments_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_adjustments_id_put**
> Adjustment procurement_adjustments_id_put(id, adjustment)



Replace Adjustment

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

api_instance = ConnectWise::AdjustmentsApi.new

id = 56 # Integer | 

adjustment = ConnectWise::Adjustment.new # Adjustment | 


begin
  result = api_instance.procurement_adjustments_id_put(id, adjustment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment** | [**Adjustment**](Adjustment.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_adjustments_post**
> Adjustment procurement_adjustments_post(adjustment)



Create Adjustment

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

api_instance = ConnectWise::AdjustmentsApi.new

adjustment = ConnectWise::Adjustment.new # Adjustment | 


begin
  result = api_instance.procurement_adjustments_post(adjustment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentsApi->procurement_adjustments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustment** | [**Adjustment**](Adjustment.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



