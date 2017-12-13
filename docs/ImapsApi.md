# ConnectWise::ImapsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_imaps_count_get**](ImapsApi.md#system_imaps_count_get) | **GET** /system/imaps/count | 
[**system_imaps_get**](ImapsApi.md#system_imaps_get) | **GET** /system/imaps | 
[**system_imaps_id_get**](ImapsApi.md#system_imaps_id_get) | **GET** /system/imaps/{id} | 


# **system_imaps_count_get**
> Count system_imaps_count_get(opts)



Get Imap Count

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

api_instance = ConnectWise::ImapsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_imaps_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImapsApi->system_imaps_count_get: #{e}"
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



# **system_imaps_get**
> Array&lt;Imap&gt; system_imaps_get(opts)



Get Imaps

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

api_instance = ConnectWise::ImapsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_imaps_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImapsApi->system_imaps_get: #{e}"
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

[**Array&lt;Imap&gt;**](Imap.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_imaps_id_get**
> Imap system_imaps_id_get(id)



Get Imap By Id

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

api_instance = ConnectWise::ImapsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_imaps_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImapsApi->system_imaps_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Imap**](Imap.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



