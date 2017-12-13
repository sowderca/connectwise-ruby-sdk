# ConnectWise::SLAsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_sl_as_count_get**](SLAsApi.md#service_sl_as_count_get) | **GET** /service/SLAs/count | 
[**service_sl_as_get**](SLAsApi.md#service_sl_as_get) | **GET** /service/SLAs | 
[**service_sl_as_id_delete**](SLAsApi.md#service_sl_as_id_delete) | **DELETE** /service/SLAs/{id} | 
[**service_sl_as_id_get**](SLAsApi.md#service_sl_as_id_get) | **GET** /service/SLAs/{id} | 
[**service_sl_as_id_patch**](SLAsApi.md#service_sl_as_id_patch) | **PATCH** /service/SLAs/{id} | 
[**service_sl_as_id_put**](SLAsApi.md#service_sl_as_id_put) | **PUT** /service/SLAs/{id} | 
[**service_sl_as_post**](SLAsApi.md#service_sl_as_post) | **POST** /service/SLAs | 


# **service_sl_as_count_get**
> Count service_sl_as_count_get(opts)



Get S L A Count

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

api_instance = ConnectWise::SLAsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_sl_as_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_count_get: #{e}"
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



# **service_sl_as_get**
> Array&lt;SLA&gt; service_sl_as_get(opts)



Get S L A

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

api_instance = ConnectWise::SLAsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_sl_as_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_get: #{e}"
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

[**Array&lt;SLA&gt;**](SLA.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sl_as_id_delete**
> service_sl_as_id_delete(id)



Delete S L A By Id

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

api_instance = ConnectWise::SLAsApi.new

id = 56 # Integer | 


begin
  api_instance.service_sl_as_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_id_delete: #{e}"
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



# **service_sl_as_id_get**
> SLA service_sl_as_id_get(id)



Get S L A By Id

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

api_instance = ConnectWise::SLAsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_sl_as_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SLA**](SLA.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_sl_as_id_patch**
> SLA service_sl_as_id_patch(id, operations)



Update S L A

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

api_instance = ConnectWise::SLAsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_sl_as_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SLA**](SLA.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sl_as_id_put**
> SLA service_sl_as_id_put(id, s_la)



Replace S L A

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

api_instance = ConnectWise::SLAsApi.new

id = 56 # Integer | 

s_la = ConnectWise::SLA.new # SLA | 


begin
  result = api_instance.service_sl_as_id_put(id, s_la)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **s_la** | [**SLA**](SLA.md)|  | 

### Return type

[**SLA**](SLA.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_sl_as_post**
> SLA service_sl_as_post(s_la)



Create S L A

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

api_instance = ConnectWise::SLAsApi.new

s_la = ConnectWise::SLA.new # SLA | 


begin
  result = api_instance.service_sl_as_post(s_la)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SLAsApi->service_sl_as_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_la** | [**SLA**](SLA.md)|  | 

### Return type

[**SLA**](SLA.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



