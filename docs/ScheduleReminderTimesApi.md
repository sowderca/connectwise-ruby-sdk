# ConnectWise::ScheduleReminderTimesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_reminder_times_count_get**](ScheduleReminderTimesApi.md#schedule_reminder_times_count_get) | **GET** /schedule/reminderTimes/count | 
[**schedule_reminder_times_get**](ScheduleReminderTimesApi.md#schedule_reminder_times_get) | **GET** /schedule/reminderTimes | 
[**schedule_reminder_times_id_get**](ScheduleReminderTimesApi.md#schedule_reminder_times_id_get) | **GET** /schedule/reminderTimes/{id} | 
[**schedule_reminder_times_id_patch**](ScheduleReminderTimesApi.md#schedule_reminder_times_id_patch) | **PATCH** /schedule/reminderTimes/{id} | 
[**schedule_reminder_times_id_put**](ScheduleReminderTimesApi.md#schedule_reminder_times_id_put) | **PUT** /schedule/reminderTimes/{id} | 


# **schedule_reminder_times_count_get**
> Count schedule_reminder_times_count_get(opts)



Get Reminder Time Count

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

api_instance = ConnectWise::ScheduleReminderTimesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_reminder_times_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleReminderTimesApi->schedule_reminder_times_count_get: #{e}"
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



# **schedule_reminder_times_get**
> Array&lt;ScheduleReminderTime&gt; schedule_reminder_times_get(opts)



Get Reminder Time

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

api_instance = ConnectWise::ScheduleReminderTimesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.schedule_reminder_times_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleReminderTimesApi->schedule_reminder_times_get: #{e}"
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

[**Array&lt;ScheduleReminderTime&gt;**](ScheduleReminderTime.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_reminder_times_id_get**
> ScheduleReminderTime schedule_reminder_times_id_get(id)



Get Reminder Time By Id

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

api_instance = ConnectWise::ScheduleReminderTimesApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_reminder_times_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleReminderTimesApi->schedule_reminder_times_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleReminderTime**](ScheduleReminderTime.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_reminder_times_id_patch**
> ScheduleReminderTime schedule_reminder_times_id_patch(id, operations)



Update Reminder Time

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

api_instance = ConnectWise::ScheduleReminderTimesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.schedule_reminder_times_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleReminderTimesApi->schedule_reminder_times_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleReminderTime**](ScheduleReminderTime.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_reminder_times_id_put**
> ScheduleReminderTime schedule_reminder_times_id_put(id, reminder_time)



Replace Reminder Time

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

api_instance = ConnectWise::ScheduleReminderTimesApi.new

id = 56 # Integer | 

reminder_time = ConnectWise::ScheduleReminderTime.new # ScheduleReminderTime | 


begin
  result = api_instance.schedule_reminder_times_id_put(id, reminder_time)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleReminderTimesApi->schedule_reminder_times_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **reminder_time** | [**ScheduleReminderTime**](ScheduleReminderTime.md)|  | 

### Return type

[**ScheduleReminderTime**](ScheduleReminderTime.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



