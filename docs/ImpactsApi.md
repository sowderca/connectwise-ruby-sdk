# ConnectWise::ImpactsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_impacts_count_get**](ImpactsApi.md#service_impacts_count_get) | **GET** /service/impacts/count | 
[**service_impacts_get**](ImpactsApi.md#service_impacts_get) | **GET** /service/impacts | 
[**service_impacts_id_get**](ImpactsApi.md#service_impacts_id_get) | **GET** /service/impacts/{id} | 
[**service_impacts_id_patch**](ImpactsApi.md#service_impacts_id_patch) | **PATCH** /service/impacts/{id} | 
[**service_impacts_id_put**](ImpactsApi.md#service_impacts_id_put) | **PUT** /service/impacts/{id} | 


# **service_impacts_count_get**
> Count service_impacts_count_get(opts)



Get Impact Count

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

api_instance = ConnectWise::ImpactsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_impacts_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImpactsApi->service_impacts_count_get: #{e}"
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



# **service_impacts_get**
> Array&lt;Impact&gt; service_impacts_get(opts)



Get Impact

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

api_instance = ConnectWise::ImpactsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_impacts_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImpactsApi->service_impacts_get: #{e}"
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

[**Array&lt;Impact&gt;**](Impact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_impacts_id_get**
> Impact service_impacts_id_get(id)



Get Impact By Id

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

api_instance = ConnectWise::ImpactsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_impacts_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImpactsApi->service_impacts_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Impact**](Impact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_impacts_id_patch**
> Impact service_impacts_id_patch(id, operations)



Update Impact

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

api_instance = ConnectWise::ImpactsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_impacts_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImpactsApi->service_impacts_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Impact**](Impact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_impacts_id_put**
> Impact service_impacts_id_put(id, impact)



Replace Impact

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

api_instance = ConnectWise::ImpactsApi.new

id = 56 # Integer | 

impact = ConnectWise::Impact.new # Impact | 


begin
  result = api_instance.service_impacts_id_put(id, impact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImpactsApi->service_impacts_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **impact** | [**Impact**](Impact.md)|  | 

### Return type

[**Impact**](Impact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



