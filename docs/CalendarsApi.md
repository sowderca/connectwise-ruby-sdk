# ConnectWise::CalendarsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_calendars_count_get**](CalendarsApi.md#system_calendars_count_get) | **GET** /system/calendars/count | 
[**system_calendars_get**](CalendarsApi.md#system_calendars_get) | **GET** /system/calendars | 
[**system_calendars_id_get**](CalendarsApi.md#system_calendars_id_get) | **GET** /system/calendars/{id} | 


# **system_calendars_count_get**
> Calendar system_calendars_count_get(opts)



Get Calendars Count

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

api_instance = ConnectWise::CalendarsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_calendars_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CalendarsApi->system_calendars_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 

### Return type

[**Calendar**](Calendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_calendars_get**
> Array&lt;Calendar&gt; system_calendars_get(opts)



Get Calendars

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

api_instance = ConnectWise::CalendarsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_calendars_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CalendarsApi->system_calendars_get: #{e}"
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

[**Array&lt;Calendar&gt;**](Calendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_calendars_id_get**
> Calendar system_calendars_id_get(id)



Get Calendar By Id

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

api_instance = ConnectWise::CalendarsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_calendars_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CalendarsApi->system_calendars_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Calendar**](Calendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



