# ConnectWise::SalesProbabilitiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_probabilities_count_get**](SalesProbabilitiesApi.md#sales_probabilities_count_get) | **GET** /sales/probabilities/count | 
[**sales_probabilities_get**](SalesProbabilitiesApi.md#sales_probabilities_get) | **GET** /sales/probabilities | 
[**sales_probabilities_id_delete**](SalesProbabilitiesApi.md#sales_probabilities_id_delete) | **DELETE** /sales/probabilities/{id} | 
[**sales_probabilities_id_get**](SalesProbabilitiesApi.md#sales_probabilities_id_get) | **GET** /sales/probabilities/{id} | 
[**sales_probabilities_id_patch**](SalesProbabilitiesApi.md#sales_probabilities_id_patch) | **PATCH** /sales/probabilities/{id} | 
[**sales_probabilities_id_put**](SalesProbabilitiesApi.md#sales_probabilities_id_put) | **PUT** /sales/probabilities/{id} | 
[**sales_probabilities_post**](SalesProbabilitiesApi.md#sales_probabilities_post) | **POST** /sales/probabilities | 


# **sales_probabilities_count_get**
> Count sales_probabilities_count_get(opts)



Get Probabilities Count

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_probabilities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_count_get: #{e}"
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



# **sales_probabilities_get**
> Array&lt;SalesProbability&gt; sales_probabilities_get(opts)



Get Probabilities

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_probabilities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_get: #{e}"
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

[**Array&lt;SalesProbability&gt;**](SalesProbability.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_probabilities_id_delete**
> sales_probabilities_id_delete(id)



Delete Probability By Id

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_probabilities_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_id_delete: #{e}"
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



# **sales_probabilities_id_get**
> SalesProbability sales_probabilities_id_get(id)



Get Probability By Id

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_probabilities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SalesProbability**](SalesProbability.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_probabilities_id_patch**
> SalesProbability sales_probabilities_id_patch(id, operations)



Update Probability

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_probabilities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SalesProbability**](SalesProbability.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_probabilities_id_put**
> SalesProbability sales_probabilities_id_put(id, probability)



Replace Probability

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

id = 56 # Integer | 

probability = ConnectWise::SalesProbability.new # SalesProbability | 


begin
  result = api_instance.sales_probabilities_id_put(id, probability)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **probability** | [**SalesProbability**](SalesProbability.md)|  | 

### Return type

[**SalesProbability**](SalesProbability.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_probabilities_post**
> SalesProbability sales_probabilities_post(probability)



Create Probability

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

api_instance = ConnectWise::SalesProbabilitiesApi.new

probability = ConnectWise::SalesProbability.new # SalesProbability | 


begin
  result = api_instance.sales_probabilities_post(probability)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesProbabilitiesApi->sales_probabilities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probability** | [**SalesProbability**](SalesProbability.md)|  | 

### Return type

[**SalesProbability**](SalesProbability.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



