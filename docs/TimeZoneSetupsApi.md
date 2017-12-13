# ConnectWise::TimeZoneSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_time_zone_setups_count_get**](TimeZoneSetupsApi.md#system_time_zone_setups_count_get) | **GET** /system/timeZoneSetups/count | 
[**system_time_zone_setups_get**](TimeZoneSetupsApi.md#system_time_zone_setups_get) | **GET** /system/timeZoneSetups | 
[**system_time_zone_setups_id_delete**](TimeZoneSetupsApi.md#system_time_zone_setups_id_delete) | **DELETE** /system/timeZoneSetups/{id} | 
[**system_time_zone_setups_id_get**](TimeZoneSetupsApi.md#system_time_zone_setups_id_get) | **GET** /system/timeZoneSetups/{id} | 
[**system_time_zone_setups_id_patch**](TimeZoneSetupsApi.md#system_time_zone_setups_id_patch) | **PATCH** /system/timeZoneSetups/{id} | 
[**system_time_zone_setups_id_put**](TimeZoneSetupsApi.md#system_time_zone_setups_id_put) | **PUT** /system/timeZoneSetups/{id} | 
[**system_time_zone_setups_post**](TimeZoneSetupsApi.md#system_time_zone_setups_post) | **POST** /system/timeZoneSetups | 


# **system_time_zone_setups_count_get**
> Count system_time_zone_setups_count_get(opts)



Get Time Zones Count

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_time_zone_setups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_count_get: #{e}"
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



# **system_time_zone_setups_get**
> Array&lt;TimeZoneSetup&gt; system_time_zone_setups_get(opts)



Get Time Zones

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_time_zone_setups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_get: #{e}"
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

[**Array&lt;TimeZoneSetup&gt;**](TimeZoneSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_time_zone_setups_id_delete**
> system_time_zone_setups_id_delete(id)



Delete Time Zone Setup By Id

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

id = 56 # Integer | 


begin
  api_instance.system_time_zone_setups_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_id_delete: #{e}"
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



# **system_time_zone_setups_id_get**
> TimeZoneSetup system_time_zone_setups_id_get(id)



Get Time Zone By Id

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_time_zone_setups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeZoneSetup**](TimeZoneSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_time_zone_setups_id_patch**
> TimeZoneSetup system_time_zone_setups_id_patch(id, operations)



Update Time Zone Setup

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_time_zone_setups_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TimeZoneSetup**](TimeZoneSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_time_zone_setups_id_put**
> TimeZoneSetup system_time_zone_setups_id_put(id, time_zone_setup)



Replace Time Zone Setup

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

id = 56 # Integer | 

time_zone_setup = ConnectWise::TimeZoneSetup.new # TimeZoneSetup | 


begin
  result = api_instance.system_time_zone_setups_id_put(id, time_zone_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **time_zone_setup** | [**TimeZoneSetup**](TimeZoneSetup.md)|  | 

### Return type

[**TimeZoneSetup**](TimeZoneSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_time_zone_setups_post**
> TimeZoneSetup system_time_zone_setups_post(time_zone_setup)



Create Time Zone Setup

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

api_instance = ConnectWise::TimeZoneSetupsApi.new

time_zone_setup = ConnectWise::TimeZoneSetup.new # TimeZoneSetup | 


begin
  result = api_instance.system_time_zone_setups_post(time_zone_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeZoneSetupsApi->system_time_zone_setups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_zone_setup** | [**TimeZoneSetup**](TimeZoneSetup.md)|  | 

### Return type

[**TimeZoneSetup**](TimeZoneSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



