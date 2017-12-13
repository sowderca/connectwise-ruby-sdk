# ConnectWise::TimeZonesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_time_zones_count_get**](TimeZonesApi.md#system_time_zones_count_get) | **GET** /system/timeZones/count | 
[**system_time_zones_get**](TimeZonesApi.md#system_time_zones_get) | **GET** /system/timeZones | 
[**system_time_zones_id_get**](TimeZonesApi.md#system_time_zones_id_get) | **GET** /system/timeZones/{id} | 


# **system_time_zones_count_get**
> Count system_time_zones_count_get(opts)



Returns a count of system TimeZones

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

api_instance = ConnectWise::TimeZonesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_time_zones_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZonesApi->system_time_zones_count_get: #{e}"
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



# **system_time_zones_get**
> Array&lt;TimeZone&gt; system_time_zones_get(opts)



Returns a list of system TimeZones

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

api_instance = ConnectWise::TimeZonesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_time_zones_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZonesApi->system_time_zones_get: #{e}"
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

[**Array&lt;TimeZone&gt;**](TimeZone.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_time_zones_id_get**
> TimeZone system_time_zones_id_get(id)



Returns a system TimeZone that can be used to create a TimeZoneSetup

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

api_instance = ConnectWise::TimeZonesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_time_zones_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZonesApi->system_time_zones_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeZone**](TimeZone.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



