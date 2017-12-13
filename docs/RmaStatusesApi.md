# ConnectWise::RmaStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_rma_statuses_count_get**](RmaStatusesApi.md#procurement_rma_statuses_count_get) | **GET** /procurement/rmaStatuses/count | 
[**procurement_rma_statuses_get**](RmaStatusesApi.md#procurement_rma_statuses_get) | **GET** /procurement/rmaStatuses | 
[**procurement_rma_statuses_id_delete**](RmaStatusesApi.md#procurement_rma_statuses_id_delete) | **DELETE** /procurement/rmaStatuses/{id} | 
[**procurement_rma_statuses_id_get**](RmaStatusesApi.md#procurement_rma_statuses_id_get) | **GET** /procurement/rmaStatuses/{id} | 
[**procurement_rma_statuses_id_patch**](RmaStatusesApi.md#procurement_rma_statuses_id_patch) | **PATCH** /procurement/rmaStatuses/{id} | 
[**procurement_rma_statuses_id_put**](RmaStatusesApi.md#procurement_rma_statuses_id_put) | **PUT** /procurement/rmaStatuses/{id} | 
[**procurement_rma_statuses_post**](RmaStatusesApi.md#procurement_rma_statuses_post) | **POST** /procurement/rmaStatuses | 


# **procurement_rma_statuses_count_get**
> Count procurement_rma_statuses_count_get(opts)



Get Rma Statuses Count

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

api_instance = ConnectWise::RmaStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_rma_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_count_get: #{e}"
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



# **procurement_rma_statuses_get**
> Array&lt;RmaStatus&gt; procurement_rma_statuses_get(opts)



Get Rma Statuses

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

api_instance = ConnectWise::RmaStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_rma_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_get: #{e}"
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

[**Array&lt;RmaStatus&gt;**](RmaStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_delete**
> procurement_rma_statuses_id_delete(id)



Delete Rma Status By Id

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

api_instance = ConnectWise::RmaStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_rma_statuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_id_delete: #{e}"
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



# **procurement_rma_statuses_id_get**
> RmaStatus procurement_rma_statuses_id_get(id)



Get Rma Status By Id

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

api_instance = ConnectWise::RmaStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_rma_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**RmaStatus**](RmaStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_patch**
> RmaStatus procurement_rma_statuses_id_patch(id, operations)



Update Rma Status

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

api_instance = ConnectWise::RmaStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_rma_statuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**RmaStatus**](RmaStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_id_put**
> RmaStatus procurement_rma_statuses_id_put(id, rma_status)



Replace Rma Status

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

api_instance = ConnectWise::RmaStatusesApi.new

id = 56 # Integer | 

rma_status = ConnectWise::RmaStatus.new # RmaStatus | 


begin
  result = api_instance.procurement_rma_statuses_id_put(id, rma_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **rma_status** | [**RmaStatus**](RmaStatus.md)|  | 

### Return type

[**RmaStatus**](RmaStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_post**
> RmaStatus procurement_rma_statuses_post(rma_status)



Create Rma Status

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

api_instance = ConnectWise::RmaStatusesApi.new

rma_status = ConnectWise::RmaStatus.new # RmaStatus | 


begin
  result = api_instance.procurement_rma_statuses_post(rma_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusesApi->procurement_rma_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rma_status** | [**RmaStatus**](RmaStatus.md)|  | 

### Return type

[**RmaStatus**](RmaStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



