# ConnectWise::PricingSchedulesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_pricingschedules_count_get**](PricingSchedulesApi.md#procurement_pricingschedules_count_get) | **GET** /procurement/pricingschedules/count | 
[**procurement_pricingschedules_get**](PricingSchedulesApi.md#procurement_pricingschedules_get) | **GET** /procurement/pricingschedules | 
[**procurement_pricingschedules_id_delete**](PricingSchedulesApi.md#procurement_pricingschedules_id_delete) | **DELETE** /procurement/pricingschedules/{id} | 
[**procurement_pricingschedules_id_get**](PricingSchedulesApi.md#procurement_pricingschedules_id_get) | **GET** /procurement/pricingschedules/{id} | 
[**procurement_pricingschedules_id_patch**](PricingSchedulesApi.md#procurement_pricingschedules_id_patch) | **PATCH** /procurement/pricingschedules/{id} | 
[**procurement_pricingschedules_id_put**](PricingSchedulesApi.md#procurement_pricingschedules_id_put) | **PUT** /procurement/pricingschedules/{id} | 
[**procurement_pricingschedules_post**](PricingSchedulesApi.md#procurement_pricingschedules_post) | **POST** /procurement/pricingschedules | 


# **procurement_pricingschedules_count_get**
> Count procurement_pricingschedules_count_get(opts)



Get Pricing Schedules Count

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

api_instance = ConnectWise::PricingSchedulesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.procurement_pricingschedules_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_count_get: #{e}"
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



# **procurement_pricingschedules_get**
> Array&lt;PricingSchedule&gt; procurement_pricingschedules_get(opts)



Get Pricing Schedules

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

api_instance = ConnectWise::PricingSchedulesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_pricingschedules_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_get: #{e}"
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

[**Array&lt;PricingSchedule&gt;**](PricingSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_id_delete**
> procurement_pricingschedules_id_delete(id)



Delete Pricing Schedule By Id

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

api_instance = ConnectWise::PricingSchedulesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_pricingschedules_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_id_delete: #{e}"
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



# **procurement_pricingschedules_id_get**
> PricingSchedule procurement_pricingschedules_id_get(id)



Get Pricing Schedule By Id

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

api_instance = ConnectWise::PricingSchedulesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_pricingschedules_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PricingSchedule**](PricingSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_pricingschedules_id_patch**
> PricingSchedule procurement_pricingschedules_id_patch(id, operations)



Update Pricing Schedule

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

api_instance = ConnectWise::PricingSchedulesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_pricingschedules_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PricingSchedule**](PricingSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_id_put**
> PricingSchedule procurement_pricingschedules_id_put(id, pricing_schedule)



Replace Pricing Schedule

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

api_instance = ConnectWise::PricingSchedulesApi.new

id = 56 # Integer | 

pricing_schedule = ConnectWise::PricingSchedule.new # PricingSchedule | 


begin
  result = api_instance.procurement_pricingschedules_id_put(id, pricing_schedule)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **pricing_schedule** | [**PricingSchedule**](PricingSchedule.md)|  | 

### Return type

[**PricingSchedule**](PricingSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_pricingschedules_post**
> PricingSchedule procurement_pricingschedules_post(pricing_schedule)



Create Pricing Schedule

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

api_instance = ConnectWise::PricingSchedulesApi.new

pricing_schedule = ConnectWise::PricingSchedule.new # PricingSchedule | 


begin
  result = api_instance.procurement_pricingschedules_post(pricing_schedule)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PricingSchedulesApi->procurement_pricingschedules_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_schedule** | [**PricingSchedule**](PricingSchedule.md)|  | 

### Return type

[**PricingSchedule**](PricingSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



