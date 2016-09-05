# Connectwise::InfoApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_info_get**](InfoApi.md#system_info_get) | **GET** /system/info | 


# **system_info_get**
> Info system_info_get



Get Infos

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::InfoApi.new

begin
  result = api_instance.system_info_get
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling InfoApi->system_info_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Info**](Info.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



