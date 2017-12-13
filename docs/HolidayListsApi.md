# ConnectWise::HolidayListsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_holiday_lists_count_get**](HolidayListsApi.md#system_holiday_lists_count_get) | **GET** /system/holidayLists/count | 
[**system_holiday_lists_get**](HolidayListsApi.md#system_holiday_lists_get) | **GET** /system/holidayLists | 
[**system_holiday_lists_id_delete**](HolidayListsApi.md#system_holiday_lists_id_delete) | **DELETE** /system/holidayLists/{id} | 
[**system_holiday_lists_id_get**](HolidayListsApi.md#system_holiday_lists_id_get) | **GET** /system/holidayLists/{id} | 
[**system_holiday_lists_id_patch**](HolidayListsApi.md#system_holiday_lists_id_patch) | **PATCH** /system/holidayLists/{id} | 
[**system_holiday_lists_id_put**](HolidayListsApi.md#system_holiday_lists_id_put) | **PUT** /system/holidayLists/{id} | 
[**system_holiday_lists_post**](HolidayListsApi.md#system_holiday_lists_post) | **POST** /system/holidayLists | 


# **system_holiday_lists_count_get**
> Count system_holiday_lists_count_get(opts)



Get Holiday List Count

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

api_instance = ConnectWise::HolidayListsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_holiday_lists_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_count_get: #{e}"
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



# **system_holiday_lists_get**
> Array&lt;HolidayList&gt; system_holiday_lists_get(opts)



Get Holiday List

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

api_instance = ConnectWise::HolidayListsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_holiday_lists_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_get: #{e}"
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

[**Array&lt;HolidayList&gt;**](HolidayList.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_holiday_lists_id_delete**
> system_holiday_lists_id_delete(id)



Delete Holiday List By Id

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

api_instance = ConnectWise::HolidayListsApi.new

id = 56 # Integer | 


begin
  api_instance.system_holiday_lists_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_id_delete: #{e}"
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



# **system_holiday_lists_id_get**
> HolidayList system_holiday_lists_id_get(id)



Get Holiday List By Id

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

api_instance = ConnectWise::HolidayListsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_holiday_lists_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**HolidayList**](HolidayList.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_holiday_lists_id_patch**
> HolidayList system_holiday_lists_id_patch(id, operations)



Update Holiday List

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

api_instance = ConnectWise::HolidayListsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_holiday_lists_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**HolidayList**](HolidayList.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_holiday_lists_id_put**
> HolidayList system_holiday_lists_id_put(id, holiday_list)



Replace Holiday List

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

api_instance = ConnectWise::HolidayListsApi.new

id = 56 # Integer | 

holiday_list = ConnectWise::HolidayList.new # HolidayList | 


begin
  result = api_instance.system_holiday_lists_id_put(id, holiday_list)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **holiday_list** | [**HolidayList**](HolidayList.md)|  | 

### Return type

[**HolidayList**](HolidayList.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_holiday_lists_post**
> HolidayList system_holiday_lists_post(holiday_list)



Create Holiday List

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

api_instance = ConnectWise::HolidayListsApi.new

holiday_list = ConnectWise::HolidayList.new # HolidayList | 


begin
  result = api_instance.system_holiday_lists_post(holiday_list)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling HolidayListsApi->system_holiday_lists_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **holiday_list** | [**HolidayList**](HolidayList.md)|  | 

### Return type

[**HolidayList**](HolidayList.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



