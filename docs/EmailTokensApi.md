# ConnectWise::EmailTokensApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_email_tokens_count_get**](EmailTokensApi.md#system_email_tokens_count_get) | **GET** /system/emailTokens/count | 
[**system_email_tokens_get**](EmailTokensApi.md#system_email_tokens_get) | **GET** /system/emailTokens | 
[**system_email_tokens_id_get**](EmailTokensApi.md#system_email_tokens_id_get) | **GET** /system/emailTokens/{id} | 


# **system_email_tokens_count_get**
> Count system_email_tokens_count_get(opts)



Get Email Tokens Count

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

api_instance = ConnectWise::EmailTokensApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_email_tokens_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailTokensApi->system_email_tokens_count_get: #{e}"
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



# **system_email_tokens_get**
> Array&lt;EmailToken&gt; system_email_tokens_get(opts)



Get Email Tokens

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

api_instance = ConnectWise::EmailTokensApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_email_tokens_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailTokensApi->system_email_tokens_get: #{e}"
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

[**Array&lt;EmailToken&gt;**](EmailToken.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_tokens_id_get**
> EmailToken system_email_tokens_id_get(id)



Get Email Token By Id

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

api_instance = ConnectWise::EmailTokensApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_email_tokens_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailTokensApi->system_email_tokens_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**EmailToken**](EmailToken.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



