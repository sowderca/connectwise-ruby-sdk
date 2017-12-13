# ConnectWise::RMADispositionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_rma_dispositions_count_get**](RMADispositionsApi.md#procurement_rma_dispositions_count_get) | **GET** /procurement/RMADispositions/count | 
[**procurement_rma_dispositions_get**](RMADispositionsApi.md#procurement_rma_dispositions_get) | **GET** /procurement/RMADispositions | 
[**procurement_rma_dispositions_id_delete**](RMADispositionsApi.md#procurement_rma_dispositions_id_delete) | **DELETE** /procurement/RMADispositions/{id} | 
[**procurement_rma_dispositions_id_get**](RMADispositionsApi.md#procurement_rma_dispositions_id_get) | **GET** /procurement/RMADispositions/{id} | 
[**procurement_rma_dispositions_id_patch**](RMADispositionsApi.md#procurement_rma_dispositions_id_patch) | **PATCH** /procurement/RMADispositions/{id} | 
[**procurement_rma_dispositions_id_put**](RMADispositionsApi.md#procurement_rma_dispositions_id_put) | **PUT** /procurement/RMADispositions/{id} | 
[**procurement_rma_dispositions_post**](RMADispositionsApi.md#procurement_rma_dispositions_post) | **POST** /procurement/RMADispositions | 


# **procurement_rma_dispositions_count_get**
> Count procurement_rma_dispositions_count_get(opts)



Get R M A Disposition Count

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

api_instance = ConnectWise::RMADispositionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_rma_dispositions_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_count_get: #{e}"
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



# **procurement_rma_dispositions_get**
> Array&lt;RMADisposition&gt; procurement_rma_dispositions_get(opts)



Get R M A Disposition

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

api_instance = ConnectWise::RMADispositionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_rma_dispositions_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_get: #{e}"
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

[**Array&lt;RMADisposition&gt;**](RMADisposition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_dispositions_id_delete**
> procurement_rma_dispositions_id_delete(id)



Delete R M A Disposition By Id

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

api_instance = ConnectWise::RMADispositionsApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_rma_dispositions_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_id_delete: #{e}"
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



# **procurement_rma_dispositions_id_get**
> RMADisposition procurement_rma_dispositions_id_get(id)



Get R M A Disposition By Id

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

api_instance = ConnectWise::RMADispositionsApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_rma_dispositions_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**RMADisposition**](RMADisposition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_dispositions_id_patch**
> RMADisposition procurement_rma_dispositions_id_patch(id, operations)



Update R M A Disposition

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

api_instance = ConnectWise::RMADispositionsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_rma_dispositions_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**RMADisposition**](RMADisposition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_dispositions_id_put**
> RMADisposition procurement_rma_dispositions_id_put(id, rma_disposition)



Replace R M A Disposition

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

api_instance = ConnectWise::RMADispositionsApi.new

id = 56 # Integer | 

rma_disposition = ConnectWise::RMADisposition.new # RMADisposition | 


begin
  result = api_instance.procurement_rma_dispositions_id_put(id, rma_disposition)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **rma_disposition** | [**RMADisposition**](RMADisposition.md)|  | 

### Return type

[**RMADisposition**](RMADisposition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_dispositions_post**
> RMADisposition procurement_rma_dispositions_post(rma_disposition)



Create R M A Disposition

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

api_instance = ConnectWise::RMADispositionsApi.new

rma_disposition = ConnectWise::RMADisposition.new # RMADisposition | 


begin
  result = api_instance.procurement_rma_dispositions_post(rma_disposition)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMADispositionsApi->procurement_rma_dispositions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rma_disposition** | [**RMADisposition**](RMADisposition.md)|  | 

### Return type

[**RMADisposition**](RMADisposition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



