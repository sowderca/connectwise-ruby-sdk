# Connectwise::UnitsOfMeasureApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_unit_of_measures_count_get**](UnitsOfMeasureApi.md#procurement_unit_of_measures_count_get) | **GET** /procurement/unitOfMeasures/count | 
[**procurement_unit_of_measures_get**](UnitsOfMeasureApi.md#procurement_unit_of_measures_get) | **GET** /procurement/unitOfMeasures | 
[**procurement_unit_of_measures_id_delete**](UnitsOfMeasureApi.md#procurement_unit_of_measures_id_delete) | **DELETE** /procurement/unitOfMeasures/{id} | 
[**procurement_unit_of_measures_id_get**](UnitsOfMeasureApi.md#procurement_unit_of_measures_id_get) | **GET** /procurement/unitOfMeasures/{id} | 
[**procurement_unit_of_measures_id_patch**](UnitsOfMeasureApi.md#procurement_unit_of_measures_id_patch) | **PATCH** /procurement/unitOfMeasures/{id} | 
[**procurement_unit_of_measures_id_put**](UnitsOfMeasureApi.md#procurement_unit_of_measures_id_put) | **PUT** /procurement/unitOfMeasures/{id} | 
[**procurement_unit_of_measures_post**](UnitsOfMeasureApi.md#procurement_unit_of_measures_post) | **POST** /procurement/unitOfMeasures | 


# **procurement_unit_of_measures_count_get**
> Count procurement_unit_of_measures_count_get(opts)



Get Unit Of Measure Count

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

api_instance = Connectwise::UnitsOfMeasureApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_unit_of_measures_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_count_get: #{e}"
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



# **procurement_unit_of_measures_get**
> Array&lt;UnitOfMeasure&gt; procurement_unit_of_measures_get(opts)



Get Unit Of Measure

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

api_instance = Connectwise::UnitsOfMeasureApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_unit_of_measures_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_get: #{e}"
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

[**Array&lt;UnitOfMeasure&gt;**](UnitOfMeasure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_unit_of_measures_id_delete**
> procurement_unit_of_measures_id_delete(id)



Delete Unit Of Measure By Id

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

api_instance = Connectwise::UnitsOfMeasureApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_unit_of_measures_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_id_delete: #{e}"
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



# **procurement_unit_of_measures_id_get**
> UnitOfMeasure procurement_unit_of_measures_id_get(id)



Get Unit Of Measure By Id

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

api_instance = Connectwise::UnitsOfMeasureApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_unit_of_measures_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**UnitOfMeasure**](UnitOfMeasure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_unit_of_measures_id_patch**
> UnitOfMeasure procurement_unit_of_measures_id_patch(id, operations)



Update Unit Of Measure

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

api_instance = Connectwise::UnitsOfMeasureApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_unit_of_measures_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**UnitOfMeasure**](UnitOfMeasure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_unit_of_measures_id_put**
> UnitOfMeasure procurement_unit_of_measures_id_put(id, unit_of_measure)



Replace Unit Of Measure

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

api_instance = Connectwise::UnitsOfMeasureApi.new

id = 56 # Integer | 

unit_of_measure = Connectwise::UnitOfMeasure.new # UnitOfMeasure | 


begin
  result = api_instance.procurement_unit_of_measures_id_put(id, unit_of_measure)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md)|  | 

### Return type

[**UnitOfMeasure**](UnitOfMeasure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_unit_of_measures_post**
> UnitOfMeasure procurement_unit_of_measures_post(unit_of_measure)



Create Unit Of Measure

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

api_instance = Connectwise::UnitsOfMeasureApi.new

unit_of_measure = Connectwise::UnitOfMeasure.new # UnitOfMeasure | 


begin
  result = api_instance.procurement_unit_of_measures_post(unit_of_measure)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling UnitsOfMeasureApi->procurement_unit_of_measures_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md)|  | 

### Return type

[**UnitOfMeasure**](UnitOfMeasure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



