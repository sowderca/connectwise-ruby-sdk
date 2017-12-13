# ConnectWise::ScheduleEntriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_entries_count_get**](ScheduleEntriesApi.md#schedule_entries_count_get) | **GET** /schedule/entries/count | 
[**schedule_entries_get**](ScheduleEntriesApi.md#schedule_entries_get) | **GET** /schedule/entries | 
[**schedule_entries_id_delete**](ScheduleEntriesApi.md#schedule_entries_id_delete) | **DELETE** /schedule/entries/{id} | 
[**schedule_entries_id_get**](ScheduleEntriesApi.md#schedule_entries_id_get) | **GET** /schedule/entries/{id} | 
[**schedule_entries_id_patch**](ScheduleEntriesApi.md#schedule_entries_id_patch) | **PATCH** /schedule/entries/{id} | 
[**schedule_entries_id_put**](ScheduleEntriesApi.md#schedule_entries_id_put) | **PUT** /schedule/entries/{id} | 
[**schedule_entries_post**](ScheduleEntriesApi.md#schedule_entries_post) | **POST** /schedule/entries | 


# **schedule_entries_count_get**
> Count schedule_entries_count_get(opts)



Get Schedules Count

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

api_instance = ConnectWise::ScheduleEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_entries_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_count_get: #{e}"
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



# **schedule_entries_get**
> Array&lt;ScheduleEntry&gt; schedule_entries_get(opts)



Get Schedules

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

api_instance = ConnectWise::ScheduleEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.schedule_entries_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_get: #{e}"
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

[**Array&lt;ScheduleEntry&gt;**](ScheduleEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_entries_id_delete**
> schedule_entries_id_delete(id)



Delete Schedule By Id

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

api_instance = ConnectWise::ScheduleEntriesApi.new

id = 56 # Integer | 


begin
  api_instance.schedule_entries_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_id_delete: #{e}"
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



# **schedule_entries_id_get**
> ScheduleEntry schedule_entries_id_get(id)



Get Schedule By Id

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

api_instance = ConnectWise::ScheduleEntriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_entries_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleEntry**](ScheduleEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_entries_id_patch**
> ScheduleEntry schedule_entries_id_patch(id, operations)



Update Schedule

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

api_instance = ConnectWise::ScheduleEntriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.schedule_entries_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleEntry**](ScheduleEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_entries_id_put**
> ScheduleEntry schedule_entries_id_put(id, schedule_entry)



Replace Schedule

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

api_instance = ConnectWise::ScheduleEntriesApi.new

id = 56 # Integer | 

schedule_entry = ConnectWise::ScheduleEntry.new # ScheduleEntry | 


begin
  result = api_instance.schedule_entries_id_put(id, schedule_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **schedule_entry** | [**ScheduleEntry**](ScheduleEntry.md)|  | 

### Return type

[**ScheduleEntry**](ScheduleEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_entries_post**
> ScheduleEntry schedule_entries_post(schedule_entry)



Create Schedule

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

api_instance = ConnectWise::ScheduleEntriesApi.new

schedule_entry = ConnectWise::ScheduleEntry.new # ScheduleEntry | 


begin
  result = api_instance.schedule_entries_post(schedule_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleEntriesApi->schedule_entries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_entry** | [**ScheduleEntry**](ScheduleEntry.md)|  | 

### Return type

[**ScheduleEntry**](ScheduleEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



