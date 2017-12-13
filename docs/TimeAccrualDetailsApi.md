# ConnectWise::TimeAccrualDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_accruals_id_details_count_get**](TimeAccrualDetailsApi.md#time_accruals_id_details_count_get) | **GET** /time/accruals/{id}/details/count | 
[**time_accruals_id_details_detail_id_delete**](TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_delete) | **DELETE** /time/accruals/{id}/details/{detailId} | 
[**time_accruals_id_details_detail_id_get**](TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_get) | **GET** /time/accruals/{id}/details/{detailId} | 
[**time_accruals_id_details_detail_id_patch**](TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_patch) | **PATCH** /time/accruals/{id}/details/{detailId} | 
[**time_accruals_id_details_detail_id_put**](TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_put) | **PUT** /time/accruals/{id}/details/{detailId} | 
[**time_accruals_id_details_get**](TimeAccrualDetailsApi.md#time_accruals_id_details_get) | **GET** /time/accruals/{id}/details | 
[**time_accruals_id_details_post**](TimeAccrualDetailsApi.md#time_accruals_id_details_post) | **POST** /time/accruals/{id}/details | 


# **time_accruals_id_details_count_get**
> Count time_accruals_id_details_count_get(id, opts)



Get Time Accrual Detail Count

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_accruals_id_details_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_count_get: #{e}"
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



# **time_accruals_id_details_detail_id_delete**
> time_accruals_id_details_detail_id_delete(id, detail_id)



Delete Time Accrual Detail By Id

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  api_instance.time_accruals_id_details_detail_id_delete(id, detail_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_detail_id_delete: #{e}"
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



# **time_accruals_id_details_detail_id_get**
> TimeAccrualDetail time_accruals_id_details_detail_id_get(id, detail_id)



Get Time Accrual Detail By Id

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  result = api_instance.time_accruals_id_details_detail_id_get(id, detail_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

[**TimeAccrualDetail**](TimeAccrualDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_accruals_id_details_detail_id_patch**
> TimeAccrualDetail time_accruals_id_details_detail_id_patch(id, detail_id, operations)



Update Time Accrual Detail

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_accruals_id_details_detail_id_patch(id, detail_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_detail_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TimeAccrualDetail**](TimeAccrualDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_accruals_id_details_detail_id_put**
> TimeAccrualDetail time_accruals_id_details_detail_id_put(id, detail_id, time_accrual_detail)



Replace Time Accrual Detail

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

time_accrual_detail = ConnectWise::TimeAccrualDetail.new # TimeAccrualDetail | 


begin
  result = api_instance.time_accruals_id_details_detail_id_put(id, detail_id, time_accrual_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_detail_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **time_accrual_detail** | [**TimeAccrualDetail**](TimeAccrualDetail.md)|  | 

### Return type

[**TimeAccrualDetail**](TimeAccrualDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_accruals_id_details_get**
> Array&lt;TimeAccrualDetail&gt; time_accruals_id_details_get(id, opts)



Get Time Accrual Detail

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

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
  result = api_instance.time_accruals_id_details_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_get: #{e}"
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

[**Array&lt;TimeAccrualDetail&gt;**](TimeAccrualDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_accruals_id_details_post**
> TimeAccrualDetail time_accruals_id_details_post(id, time_accrual_detail)



Create Time Accrual Detail

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

api_instance = ConnectWise::TimeAccrualDetailsApi.new

id = 56 # Integer | 

time_accrual_detail = ConnectWise::TimeAccrualDetail.new # TimeAccrualDetail | 


begin
  result = api_instance.time_accruals_id_details_post(id, time_accrual_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualDetailsApi->time_accruals_id_details_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **time_accrual_detail** | [**TimeAccrualDetail**](TimeAccrualDetail.md)|  | 

### Return type

[**TimeAccrualDetail**](TimeAccrualDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



