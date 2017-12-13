# ConnectWise::UnitOfMeasureConversionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_unit_of_measures_id_conversions_conversion_id_delete**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_delete) | **DELETE** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
[**procurement_unit_of_measures_id_conversions_conversion_id_get**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
[**procurement_unit_of_measures_id_conversions_conversion_id_patch**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_patch) | **PATCH** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
[**procurement_unit_of_measures_id_conversions_conversion_id_put**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_put) | **PUT** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
[**procurement_unit_of_measures_id_conversions_count_get**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_count_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/count | 
[**procurement_unit_of_measures_id_conversions_get**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_get) | **GET** /procurement/unitOfMeasures/{id}/conversions | 
[**procurement_unit_of_measures_id_conversions_post**](UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_post) | **POST** /procurement/unitOfMeasures/{id}/conversions | 


# **procurement_unit_of_measures_id_conversions_conversion_id_delete**
> procurement_unit_of_measures_id_conversions_conversion_id_delete(id, conversion_id)



Delete Conversion By Id

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

conversion_id = 56 # Integer | 


begin
  api_instance.procurement_unit_of_measures_id_conversions_conversion_id_delete(id, conversion_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_conversion_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_unit_of_measures_id_conversions_conversion_id_get**
> Conversion procurement_unit_of_measures_id_conversions_conversion_id_get(id, conversion_id)



Get Conversion By Id

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

conversion_id = 56 # Integer | 


begin
  result = api_instance.procurement_unit_of_measures_id_conversions_conversion_id_get(id, conversion_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_conversion_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion_id** | **Integer**|  | 

### Return type

[**Conversion**](Conversion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_unit_of_measures_id_conversions_conversion_id_patch**
> Conversion procurement_unit_of_measures_id_conversions_conversion_id_patch(id, conversion_id, operations)



Update Conversion

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

conversion_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_unit_of_measures_id_conversions_conversion_id_patch(id, conversion_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_conversion_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Conversion**](Conversion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_unit_of_measures_id_conversions_conversion_id_put**
> Conversion procurement_unit_of_measures_id_conversions_conversion_id_put(id, conversion_id, conversion)



Replace Conversion

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

conversion_id = 56 # Integer | 

conversion = ConnectWise::Conversion.new # Conversion | 


begin
  result = api_instance.procurement_unit_of_measures_id_conversions_conversion_id_put(id, conversion_id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_conversion_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion_id** | **Integer**|  | 
 **conversion** | [**Conversion**](Conversion.md)|  | 

### Return type

[**Conversion**](Conversion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_unit_of_measures_id_conversions_count_get**
> Count procurement_unit_of_measures_id_conversions_count_get(id, opts)



Get Conversion Count

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_unit_of_measures_id_conversions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_unit_of_measures_id_conversions_get**
> Array&lt;Conversion&gt; procurement_unit_of_measures_id_conversions_get(id, opts)



Get Conversion

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_unit_of_measures_id_conversions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Conversion&gt;**](Conversion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_unit_of_measures_id_conversions_post**
> Conversion procurement_unit_of_measures_id_conversions_post(id, conversion)



Create Conversion

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

api_instance = ConnectWise::UnitOfMeasureConversionsApi.new

id = 56 # Integer | 

conversion = ConnectWise::Conversion.new # Conversion | 


begin
  result = api_instance.procurement_unit_of_measures_id_conversions_post(id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UnitOfMeasureConversionsApi->procurement_unit_of_measures_id_conversions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion** | [**Conversion**](Conversion.md)|  | 

### Return type

[**Conversion**](Conversion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



