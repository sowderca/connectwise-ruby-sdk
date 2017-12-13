# ConnectWise::ServiceSignoffsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_service_signoff_count_get**](ServiceSignoffsApi.md#service_service_signoff_count_get) | **GET** /service/serviceSignoff/count | 
[**service_service_signoff_get**](ServiceSignoffsApi.md#service_service_signoff_get) | **GET** /service/serviceSignoff | 
[**service_service_signoff_id_delete**](ServiceSignoffsApi.md#service_service_signoff_id_delete) | **DELETE** /service/serviceSignoff/{id} | 
[**service_service_signoff_id_get**](ServiceSignoffsApi.md#service_service_signoff_id_get) | **GET** /service/serviceSignoff/{id} | 
[**service_service_signoff_id_patch**](ServiceSignoffsApi.md#service_service_signoff_id_patch) | **PATCH** /service/serviceSignoff/{id} | 
[**service_service_signoff_id_put**](ServiceSignoffsApi.md#service_service_signoff_id_put) | **PUT** /service/serviceSignoff/{id} | 
[**service_service_signoff_post**](ServiceSignoffsApi.md#service_service_signoff_post) | **POST** /service/serviceSignoff | 


# **service_service_signoff_count_get**
> Count service_service_signoff_count_get(opts)



Get Service Signoffs Count

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

api_instance = ConnectWise::ServiceSignoffsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_service_signoff_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_count_get: #{e}"
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



# **service_service_signoff_get**
> Array&lt;ServiceSignoff&gt; service_service_signoff_get(opts)



Get Service Signoffs

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

api_instance = ConnectWise::ServiceSignoffsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_service_signoff_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_get: #{e}"
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

[**Array&lt;ServiceSignoff&gt;**](ServiceSignoff.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_service_signoff_id_delete**
> service_service_signoff_id_delete(id)



Delete Service Signoff By Id

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

api_instance = ConnectWise::ServiceSignoffsApi.new

id = 56 # Integer | 


begin
  api_instance.service_service_signoff_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_id_delete: #{e}"
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



# **service_service_signoff_id_get**
> ServiceSignoff service_service_signoff_id_get(id)



Get Service Signoff By Id

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

api_instance = ConnectWise::ServiceSignoffsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_service_signoff_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ServiceSignoff**](ServiceSignoff.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_service_signoff_id_patch**
> ServiceSignoff service_service_signoff_id_patch(id, operations)



Update Service Signoff

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

api_instance = ConnectWise::ServiceSignoffsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_service_signoff_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceSignoff**](ServiceSignoff.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_service_signoff_id_put**
> ServiceSignoff service_service_signoff_id_put(id, service_signoff)



Replace Service Signoff

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

api_instance = ConnectWise::ServiceSignoffsApi.new

id = 56 # Integer | 

service_signoff = ConnectWise::ServiceSignoff.new # ServiceSignoff | 


begin
  result = api_instance.service_service_signoff_id_put(id, service_signoff)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_signoff** | [**ServiceSignoff**](ServiceSignoff.md)|  | 

### Return type

[**ServiceSignoff**](ServiceSignoff.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_service_signoff_post**
> ServiceSignoff service_service_signoff_post(service_signoff)



Create Service Signoff

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

api_instance = ConnectWise::ServiceSignoffsApi.new

service_signoff = ConnectWise::ServiceSignoff.new # ServiceSignoff | 


begin
  result = api_instance.service_service_signoff_post(service_signoff)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSignoffsApi->service_service_signoff_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_signoff** | [**ServiceSignoff**](ServiceSignoff.md)|  | 

### Return type

[**ServiceSignoff**](ServiceSignoff.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



