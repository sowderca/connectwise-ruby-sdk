# ConnectWise::PricingDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_pricingschedules_id_details_count_get**](PricingDetailsApi.md#procurement_pricingschedules_id_details_count_get) | **GET** /procurement/pricingschedules/{id}/details/count | 
[**procurement_pricingschedules_id_details_detail_id_delete**](PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_delete) | **DELETE** /procurement/pricingschedules/{id}/details/{detailID} | 
[**procurement_pricingschedules_id_details_detail_id_get**](PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_get) | **GET** /procurement/pricingschedules/{id}/details/{detailID} | 
[**procurement_pricingschedules_id_details_detail_id_patch**](PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_patch) | **PATCH** /procurement/pricingschedules/{id}/details/{detailID} | 
[**procurement_pricingschedules_id_details_detail_id_put**](PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_put) | **PUT** /procurement/pricingschedules/{id}/details/{detailID} | 
[**procurement_pricingschedules_id_details_get**](PricingDetailsApi.md#procurement_pricingschedules_id_details_get) | **GET** /procurement/pricingschedules/{id}/details | 
[**procurement_pricingschedules_id_details_post**](PricingDetailsApi.md#procurement_pricingschedules_id_details_post) | **POST** /procurement/pricingschedules/{id}/details | 


# **procurement_pricingschedules_id_details_count_get**
> Count procurement_pricingschedules_id_details_count_get(id, opts)



Get Pricing Detail Count

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_pricingschedules_id_details_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_count_get: #{e}"
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



# **procurement_pricingschedules_id_details_detail_id_delete**
> procurement_pricingschedules_id_details_detail_id_delete(id, detail_id)



Delete Pricing Detail By Id

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  api_instance.procurement_pricingschedules_id_details_detail_id_delete(id, detail_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_detail_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_pricingschedules_id_details_detail_id_get**
> PricingDetail procurement_pricingschedules_id_details_detail_id_get(id, detail_id)



Get Pricing Detail By Id

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  result = api_instance.procurement_pricingschedules_id_details_detail_id_get(id, detail_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

[**PricingDetail**](PricingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_id_details_detail_id_patch**
> PricingDetail procurement_pricingschedules_id_details_detail_id_patch(id, detail_id, operations)



Update Pricing Detail

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_pricingschedules_id_details_detail_id_patch(id, detail_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_detail_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PricingDetail**](PricingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_id_details_detail_id_put**
> PricingDetail procurement_pricingschedules_id_details_detail_id_put(id, detail_id, pricing_detail)



Replace Pricing Detail

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

pricing_detail = ConnectWise::PricingDetail.new # PricingDetail | 


begin
  result = api_instance.procurement_pricingschedules_id_details_detail_id_put(id, detail_id, pricing_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_detail_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **pricing_detail** | [**PricingDetail**](PricingDetail.md)|  | 

### Return type

[**PricingDetail**](PricingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_id_details_get**
> Array&lt;PricingDetail&gt; procurement_pricingschedules_id_details_get(id, opts)



Get Pricing Detail

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_pricingschedules_id_details_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_get: #{e}"
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

[**Array&lt;PricingDetail&gt;**](PricingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_id_details_post**
> PricingDetail procurement_pricingschedules_id_details_post(id, pricing_detail)



Create Pricing Detail

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

api_instance = ConnectWise::PricingDetailsApi.new

id = 56 # Integer | 

pricing_detail = ConnectWise::PricingDetail.new # PricingDetail | 


begin
  result = api_instance.procurement_pricingschedules_id_details_post(id, pricing_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingDetailsApi->procurement_pricingschedules_id_details_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **pricing_detail** | [**PricingDetail**](PricingDetail.md)|  | 

### Return type

[**PricingDetail**](PricingDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



