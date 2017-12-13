# ConnectWise::SetupScreensApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_setup_screens_count_get**](SetupScreensApi.md#system_setup_screens_count_get) | **GET** /system/setupScreens/count | 
[**system_setup_screens_get**](SetupScreensApi.md#system_setup_screens_get) | **GET** /system/setupScreens | 
[**system_setup_screens_id_get**](SetupScreensApi.md#system_setup_screens_id_get) | **GET** /system/setupScreens/{id} | 


# **system_setup_screens_count_get**
> Count system_setup_screens_count_get(opts)



Get Setup Screens Count

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

api_instance = ConnectWise::SetupScreensApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_setup_screens_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SetupScreensApi->system_setup_screens_count_get: #{e}"
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



# **system_setup_screens_get**
> Array&lt;SetupScreen&gt; system_setup_screens_get(opts)



Get Setup Screens

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

api_instance = ConnectWise::SetupScreensApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_setup_screens_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SetupScreensApi->system_setup_screens_get: #{e}"
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

[**Array&lt;SetupScreen&gt;**](SetupScreen.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_setup_screens_id_get**
> SetupScreen system_setup_screens_id_get(id)



Get Setup Screen By Id

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

api_instance = ConnectWise::SetupScreensApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_setup_screens_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SetupScreensApi->system_setup_screens_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SetupScreen**](SetupScreen.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



