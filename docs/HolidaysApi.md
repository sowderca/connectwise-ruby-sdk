# ConnectWise::HolidaysApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_holiday_lists_id_holidays_count_get**](HolidaysApi.md#system_holiday_lists_id_holidays_count_get) | **GET** /system/holidayLists/{id}/holidays/count | 
[**system_holiday_lists_id_holidays_get**](HolidaysApi.md#system_holiday_lists_id_holidays_get) | **GET** /system/holidayLists/{id}/holidays | 
[**system_holiday_lists_id_holidays_holiday_id_delete**](HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_delete) | **DELETE** /system/holidayLists/{id}/holidays/{holidayId} | 
[**system_holiday_lists_id_holidays_holiday_id_get**](HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_get) | **GET** /system/holidayLists/{id}/holidays/{holidayId} | 
[**system_holiday_lists_id_holidays_holiday_id_patch**](HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_patch) | **PATCH** /system/holidayLists/{id}/holidays/{holidayId} | 
[**system_holiday_lists_id_holidays_holiday_id_put**](HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_put) | **PUT** /system/holidayLists/{id}/holidays/{holidayId} | 
[**system_holiday_lists_id_holidays_post**](HolidaysApi.md#system_holiday_lists_id_holidays_post) | **POST** /system/holidayLists/{id}/holidays | 


# **system_holiday_lists_id_holidays_count_get**
> Count system_holiday_lists_id_holidays_count_get(id, opts)



Get Holidays Count

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_holiday_lists_id_holidays_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_holiday_lists_id_holidays_get**
> Array&lt;Holiday&gt; system_holiday_lists_id_holidays_get(id, opts)



Get Holidays

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_holiday_lists_id_holidays_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Holiday&gt;**](Holiday.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_holiday_lists_id_holidays_holiday_id_delete**
> system_holiday_lists_id_holidays_holiday_id_delete(id, holiday_id)



Delete Holiday By Id

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

holiday_id = 56 # Integer | 


begin
  api_instance.system_holiday_lists_id_holidays_holiday_id_delete(id, holiday_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_holiday_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_holiday_lists_id_holidays_holiday_id_get**
> Holiday system_holiday_lists_id_holidays_holiday_id_get(id, holiday_id)



Get Holiday By Id

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

holiday_id = 56 # Integer | 


begin
  result = api_instance.system_holiday_lists_id_holidays_holiday_id_get(id, holiday_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_holiday_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday_id** | **Integer**|  | 

### Return type

[**Holiday**](Holiday.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_holiday_lists_id_holidays_holiday_id_patch**
> Holiday system_holiday_lists_id_holidays_holiday_id_patch(id, holiday_id, operations)



Update Holiday

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

holiday_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_holiday_lists_id_holidays_holiday_id_patch(id, holiday_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_holiday_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Holiday**](Holiday.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_holiday_lists_id_holidays_holiday_id_put**
> Holiday system_holiday_lists_id_holidays_holiday_id_put(id, holiday_id, holiday)



Replace Holiday

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

holiday_id = 56 # Integer | 

holiday = ConnectWise::Holiday.new # Holiday | 


begin
  result = api_instance.system_holiday_lists_id_holidays_holiday_id_put(id, holiday_id, holiday)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_holiday_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday_id** | **Integer**|  | 
 **holiday** | [**Holiday**](Holiday.md)|  | 

### Return type

[**Holiday**](Holiday.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_holiday_lists_id_holidays_post**
> Holiday system_holiday_lists_id_holidays_post(id, holiday)



Create Holiday

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

api_instance = ConnectWise::HolidaysApi.new

id = 56 # Integer | 

holiday = ConnectWise::Holiday.new # Holiday | 


begin
  result = api_instance.system_holiday_lists_id_holidays_post(id, holiday)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidaysApi->system_holiday_lists_id_holidays_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday** | [**Holiday**](Holiday.md)|  | 

### Return type

[**Holiday**](Holiday.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



