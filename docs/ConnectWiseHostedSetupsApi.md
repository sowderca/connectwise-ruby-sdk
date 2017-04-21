# ConnectWise::ConnectWiseHostedSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_connectwisehostedsetups_count_get**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_count_get) | **GET** /system/connectwisehostedsetups/count | 
[**system_connectwisehostedsetups_get**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_get) | **GET** /system/connectwisehostedsetups | 
[**system_connectwisehostedsetups_id_delete**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_delete) | **DELETE** /system/connectwisehostedsetups/{id} | 
[**system_connectwisehostedsetups_id_get**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_get) | **GET** /system/connectwisehostedsetups/{id} | 
[**system_connectwisehostedsetups_id_patch**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_patch) | **PATCH** /system/connectwisehostedsetups/{id} | 
[**system_connectwisehostedsetups_id_put**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_put) | **PUT** /system/connectwisehostedsetups/{id} | 
[**system_connectwisehostedsetups_post**](ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_post) | **POST** /system/connectwisehostedsetups | 


# **system_connectwisehostedsetups_count_get**
> Count system_connectwisehostedsetups_count_get(opts)



Get Connect Wise Hosted Setups Count

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.system_connectwisehostedsetups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_count_get: #{e}"
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



# **system_connectwisehostedsetups_get**
> Array&lt;ConnectWiseHostedSetup&gt; system_connectwisehostedsetups_get(opts)



Get Connect Wise Hosted Setups

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_connectwisehostedsetups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_get: #{e}"
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

[**Array&lt;ConnectWiseHostedSetup&gt;**](ConnectWiseHostedSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_connectwisehostedsetups_id_delete**
> system_connectwisehostedsetups_id_delete(id)



Delete Connect Wise Hosted Setup By Id

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

id = 56 # Integer | 


begin
  api_instance.system_connectwisehostedsetups_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_id_delete: #{e}"
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



# **system_connectwisehostedsetups_id_get**
> ConnectWiseHostedSetup system_connectwisehostedsetups_id_get(id)



Get Connect Wise Hosted Setup By Id

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_connectwisehostedsetups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_connectwisehostedsetups_id_patch**
> ConnectWiseHostedSetup system_connectwisehostedsetups_id_patch(id, operations)



Update Connect Wise Hosted Setup

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_connectwisehostedsetups_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_connectwisehostedsetups_id_put**
> ConnectWiseHostedSetup system_connectwisehostedsetups_id_put(id, connect_wise_hosted_setup)



Replace Connect Wise Hosted Setup

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

id = 56 # Integer | 

connect_wise_hosted_setup = ConnectWise::ConnectWiseHostedSetup.new # ConnectWiseHostedSetup | 


begin
  result = api_instance.system_connectwisehostedsetups_id_put(id, connect_wise_hosted_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **connect_wise_hosted_setup** | [**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)|  | 

### Return type

[**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_connectwisehostedsetups_post**
> ConnectWiseHostedSetup system_connectwisehostedsetups_post(connect_wise_hosted_setup)



Create Connect Wise Hosted Setup

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

api_instance = ConnectWise::ConnectWiseHostedSetupsApi.new

connect_wise_hosted_setup = ConnectWise::ConnectWiseHostedSetup.new # ConnectWiseHostedSetup | 


begin
  result = api_instance.system_connectwisehostedsetups_post(connect_wise_hosted_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConnectWiseHostedSetupsApi->system_connectwisehostedsetups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connect_wise_hosted_setup** | [**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)|  | 

### Return type

[**ConnectWiseHostedSetup**](ConnectWiseHostedSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



