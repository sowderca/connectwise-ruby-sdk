# Connectwise::PricingBreaksApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete) | **DELETE** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch) | **PATCH** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put) | **PUT** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/count | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_get**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks | 
[**procurement_pricingschedules_sched_id_details_detail_id_breaks_post**](PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_post) | **POST** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks | 


# **procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete**
> procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete(sched_id, detail_id, break_id)



Delete Pricing Break By Id

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

break_id = 56 # Integer | 


begin
  api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete(sched_id, detail_id, break_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **break_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get**
> PricingBreak procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get(sched_id, detail_id, break_id)



Get Pricing Break By Id

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

break_id = 56 # Integer | 


begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get(sched_id, detail_id, break_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **break_id** | **Integer**|  | 

### Return type

[**PricingBreak**](PricingBreak.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch**
> PricingBreak procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch(sched_id, detail_id, break_id, operations)



Update Pricing Break

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

break_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch(sched_id, detail_id, break_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **break_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PricingBreak**](PricingBreak.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put**
> PricingBreak procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put(sched_id, detail_id, break_id, pricing_break)



Replace Pricing Break

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

break_id = 56 # Integer | 

pricing_break = Connectwise::PricingBreak.new # PricingBreak | 


begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put(sched_id, detail_id, break_id, pricing_break)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **break_id** | **Integer**|  | 
 **pricing_break** | [**PricingBreak**](PricingBreak.md)|  | 

### Return type

[**PricingBreak**](PricingBreak.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get**
> Count procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get(sched_id, detail_id, opts)



Get Pricing Break Count

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get(sched_id, detail_id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_get**
> Array&lt;PricingBreak&gt; procurement_pricingschedules_sched_id_details_detail_id_breaks_get(sched_id, detail_id, opts)



Get Pricing Break

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_get(sched_id, detail_id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;PricingBreak&gt;**](PricingBreak.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_sched_id_details_detail_id_breaks_post**
> PricingBreak procurement_pricingschedules_sched_id_details_detail_id_breaks_post(sched_id, detail_id, pricing_break)



Create Pricing Break

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

api_instance = Connectwise::PricingBreaksApi.new

sched_id = 56 # Integer | 

detail_id = 56 # Integer | 

pricing_break = Connectwise::PricingBreak.new # PricingBreak | 


begin
  result = api_instance.procurement_pricingschedules_sched_id_details_detail_id_breaks_post(sched_id, detail_id, pricing_break)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling PricingBreaksApi->procurement_pricingschedules_sched_id_details_detail_id_breaks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sched_id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **pricing_break** | [**PricingBreak**](PricingBreak.md)|  | 

### Return type

[**PricingBreak**](PricingBreak.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



