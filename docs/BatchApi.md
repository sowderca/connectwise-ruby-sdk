# ConnectWise::BatchApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_batch_post**](BatchApi.md#system_batch_post) | **POST** /system/batch | 


# **system_batch_post**
> BatchResponse system_batch_post(request)



Process Batch Requests

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

api_instance = ConnectWise::BatchApi.new

request = ConnectWise::BatchRequest.new # BatchRequest | 


begin
  result = api_instance.system_batch_post(request)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BatchApi->system_batch_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BatchRequest**](BatchRequest.md)|  | 

### Return type

[**BatchResponse**](BatchResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



