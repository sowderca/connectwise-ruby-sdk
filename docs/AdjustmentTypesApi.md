# ConnectWise::AdjustmentTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_adjustments_types_count_get**](AdjustmentTypesApi.md#procurement_adjustments_types_count_get) | **GET** /procurement/adjustments/types/count | 
[**procurement_adjustments_types_get**](AdjustmentTypesApi.md#procurement_adjustments_types_get) | **GET** /procurement/adjustments/types | 
[**procurement_adjustments_types_id_delete**](AdjustmentTypesApi.md#procurement_adjustments_types_id_delete) | **DELETE** /procurement/adjustments/types/{id} | 
[**procurement_adjustments_types_id_get**](AdjustmentTypesApi.md#procurement_adjustments_types_id_get) | **GET** /procurement/adjustments/types/{id} | 
[**procurement_adjustments_types_id_patch**](AdjustmentTypesApi.md#procurement_adjustments_types_id_patch) | **PATCH** /procurement/adjustments/types/{id} | 
[**procurement_adjustments_types_id_put**](AdjustmentTypesApi.md#procurement_adjustments_types_id_put) | **PUT** /procurement/adjustments/types/{id} | 
[**procurement_adjustments_types_post**](AdjustmentTypesApi.md#procurement_adjustments_types_post) | **POST** /procurement/adjustments/types | 


# **procurement_adjustments_types_count_get**
> Count procurement_adjustments_types_count_get(opts)



Get Adjustment Types Count

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

api_instance = ConnectWise::AdjustmentTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_adjustments_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_count_get: #{e}"
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



# **procurement_adjustments_types_get**
> Array&lt;AdjustmentType&gt; procurement_adjustments_types_get(opts)



Get Adjustment Types

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

api_instance = ConnectWise::AdjustmentTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_adjustments_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_get: #{e}"
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

[**Array&lt;AdjustmentType&gt;**](AdjustmentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_types_id_delete**
> procurement_adjustments_types_id_delete(id)



Delete Adjustment Types By Id

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

api_instance = ConnectWise::AdjustmentTypesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_adjustments_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_id_delete: #{e}"
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



# **procurement_adjustments_types_id_get**
> AdjustmentType procurement_adjustments_types_id_get(id)



Get Adjustment Types By Id

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

api_instance = ConnectWise::AdjustmentTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_adjustments_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AdjustmentType**](AdjustmentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_types_id_patch**
> AdjustmentType procurement_adjustments_types_id_patch(id, operations)



Update Adjustment Types

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

api_instance = ConnectWise::AdjustmentTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_adjustments_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AdjustmentType**](AdjustmentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_adjustments_types_id_put**
> AdjustmentType procurement_adjustments_types_id_put(id, adjustment_types)



Replace Adjustment Types

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

api_instance = ConnectWise::AdjustmentTypesApi.new

id = 56 # Integer | 

adjustment_types = ConnectWise::AdjustmentType.new # AdjustmentType | 


begin
  result = api_instance.procurement_adjustments_types_id_put(id, adjustment_types)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_types** | [**AdjustmentType**](AdjustmentType.md)|  | 

### Return type

[**AdjustmentType**](AdjustmentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_adjustments_types_post**
> AdjustmentType procurement_adjustments_types_post(adjustment_types)



Create Adjustment Types

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

api_instance = ConnectWise::AdjustmentTypesApi.new

adjustment_types = ConnectWise::AdjustmentType.new # AdjustmentType | 


begin
  result = api_instance.procurement_adjustments_types_post(adjustment_types)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentTypesApi->procurement_adjustments_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustment_types** | [**AdjustmentType**](AdjustmentType.md)|  | 

### Return type

[**AdjustmentType**](AdjustmentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



