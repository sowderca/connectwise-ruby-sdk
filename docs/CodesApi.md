# ConnectWise::CodesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_codes_count_get**](CodesApi.md#service_codes_count_get) | **GET** /service/codes/count | 
[**service_codes_get**](CodesApi.md#service_codes_get) | **GET** /service/codes | 
[**service_codes_id_delete**](CodesApi.md#service_codes_id_delete) | **DELETE** /service/codes/{id} | 
[**service_codes_id_get**](CodesApi.md#service_codes_id_get) | **GET** /service/codes/{id} | 
[**service_codes_id_patch**](CodesApi.md#service_codes_id_patch) | **PATCH** /service/codes/{id} | 
[**service_codes_id_put**](CodesApi.md#service_codes_id_put) | **PUT** /service/codes/{id} | 
[**service_codes_post**](CodesApi.md#service_codes_post) | **POST** /service/codes | 


# **service_codes_count_get**
> Count service_codes_count_get(opts)



Create Codes Count

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

api_instance = ConnectWise::CodesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.service_codes_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_count_get: #{e}"
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



# **service_codes_get**
> Array&lt;Code&gt; service_codes_get(opts)



Get Codes

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

api_instance = ConnectWise::CodesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_codes_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_get: #{e}"
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

[**Array&lt;Code&gt;**](Code.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_codes_id_delete**
> service_codes_id_delete(id)



Delete Code By Id

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

api_instance = ConnectWise::CodesApi.new

id = 56 # Integer | 


begin
  api_instance.service_codes_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_id_delete: #{e}"
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



# **service_codes_id_get**
> Code service_codes_id_get(id)



Get Code By Id

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

api_instance = ConnectWise::CodesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_codes_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Code**](Code.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_codes_id_patch**
> Code service_codes_id_patch(id, operations)



Update Code

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

api_instance = ConnectWise::CodesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_codes_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Code**](Code.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_codes_id_put**
> Code service_codes_id_put(id, code)



Replace Code

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

api_instance = ConnectWise::CodesApi.new

id = 56 # Integer | 

code = ConnectWise::Code.new # Code | 


begin
  result = api_instance.service_codes_id_put(id, code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **code** | [**Code**](Code.md)|  | 

### Return type

[**Code**](Code.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_codes_post**
> Code service_codes_post(code)



Create Codes

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

api_instance = ConnectWise::CodesApi.new

code = ConnectWise::Code.new # Code | 


begin
  result = api_instance.service_codes_post(code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CodesApi->service_codes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | [**Code**](Code.md)|  | 

### Return type

[**Code**](Code.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



