# ConnectWise::TimeAccrualsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_accruals_count_get**](TimeAccrualsApi.md#time_accruals_count_get) | **GET** /time/accruals/count | 
[**time_accruals_get**](TimeAccrualsApi.md#time_accruals_get) | **GET** /time/accruals | 
[**time_accruals_id_delete**](TimeAccrualsApi.md#time_accruals_id_delete) | **DELETE** /time/accruals/{id} | 
[**time_accruals_id_get**](TimeAccrualsApi.md#time_accruals_id_get) | **GET** /time/accruals/{id} | 
[**time_accruals_id_patch**](TimeAccrualsApi.md#time_accruals_id_patch) | **PATCH** /time/accruals/{id} | 
[**time_accruals_id_put**](TimeAccrualsApi.md#time_accruals_id_put) | **PUT** /time/accruals/{id} | 
[**time_accruals_post**](TimeAccrualsApi.md#time_accruals_post) | **POST** /time/accruals | 


# **time_accruals_count_get**
> Count time_accruals_count_get(opts)



Get Time Accruals Count

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

api_instance = ConnectWise::TimeAccrualsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_accruals_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_count_get: #{e}"
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



# **time_accruals_get**
> Array&lt;TimeAccrual&gt; time_accruals_get(opts)



Get Time Accruals

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

api_instance = ConnectWise::TimeAccrualsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_accruals_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_get: #{e}"
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

[**Array&lt;TimeAccrual&gt;**](TimeAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_accruals_id_delete**
> time_accruals_id_delete(id)



Delete Time Accrual By Id

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

api_instance = ConnectWise::TimeAccrualsApi.new

id = 56 # Integer | 


begin
  api_instance.time_accruals_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_id_delete: #{e}"
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



# **time_accruals_id_get**
> TimeAccrual time_accruals_id_get(id)



Get Time Accrual By Id

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

api_instance = ConnectWise::TimeAccrualsApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_accruals_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeAccrual**](TimeAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_accruals_id_patch**
> TimeAccrual time_accruals_id_patch(id, operations)



Update Time Accrual

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

api_instance = ConnectWise::TimeAccrualsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_accruals_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TimeAccrual**](TimeAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_accruals_id_put**
> TimeAccrual time_accruals_id_put(id, time_accrual)



Replace Time Accrual

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

api_instance = ConnectWise::TimeAccrualsApi.new

id = 56 # Integer | 

time_accrual = ConnectWise::TimeAccrual.new # TimeAccrual | 


begin
  result = api_instance.time_accruals_id_put(id, time_accrual)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **time_accrual** | [**TimeAccrual**](TimeAccrual.md)|  | 

### Return type

[**TimeAccrual**](TimeAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_accruals_post**
> TimeAccrual time_accruals_post(time_accrual)



Create Time Accrual

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

api_instance = ConnectWise::TimeAccrualsApi.new

time_accrual = ConnectWise::TimeAccrual.new # TimeAccrual | 


begin
  result = api_instance.time_accruals_post(time_accrual)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeAccrualsApi->time_accruals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_accrual** | [**TimeAccrual**](TimeAccrual.md)|  | 

### Return type

[**TimeAccrual**](TimeAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



