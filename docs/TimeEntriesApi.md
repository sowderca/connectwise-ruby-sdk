# ConnectWise::TimeEntriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_entries_count_get**](TimeEntriesApi.md#time_entries_count_get) | **GET** /time/entries/count | 
[**time_entries_get**](TimeEntriesApi.md#time_entries_get) | **GET** /time/entries | 
[**time_entries_id_delete**](TimeEntriesApi.md#time_entries_id_delete) | **DELETE** /time/entries/{id} | 
[**time_entries_id_get**](TimeEntriesApi.md#time_entries_id_get) | **GET** /time/entries/{id} | 
[**time_entries_id_patch**](TimeEntriesApi.md#time_entries_id_patch) | **PATCH** /time/entries/{id} | 
[**time_entries_id_put**](TimeEntriesApi.md#time_entries_id_put) | **PUT** /time/entries/{id} | 
[**time_entries_post**](TimeEntriesApi.md#time_entries_post) | **POST** /time/entries | 


# **time_entries_count_get**
> Count time_entries_count_get(opts)



Get Time Entries Count

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

api_instance = ConnectWise::TimeEntriesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.time_entries_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_entries_get**
> Array&lt;TimeEntry&gt; time_entries_get(opts)



Get Time Entries

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

api_instance = ConnectWise::TimeEntriesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_entries_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_get: #{e}"
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

[**Array&lt;TimeEntry&gt;**](TimeEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_entries_id_delete**
> time_entries_id_delete(id)



Delete Time Entry By Id

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

api_instance = ConnectWise::TimeEntriesApi.new

id = 56 # Integer | 


begin
  api_instance.time_entries_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_id_delete: #{e}"
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



# **time_entries_id_get**
> TimeEntry time_entries_id_get(id)



Get Time Entry By Id

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

api_instance = ConnectWise::TimeEntriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_entries_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_entries_id_patch**
> TimeEntry time_entries_id_patch(id, operations)



Update Time Entry

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

api_instance = ConnectWise::TimeEntriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_entries_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_entries_id_put**
> TimeEntry time_entries_id_put(id, time_entry)



Replace Time Entry

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

api_instance = ConnectWise::TimeEntriesApi.new

id = 56 # Integer | 

time_entry = ConnectWise::TimeEntry.new # TimeEntry | 


begin
  result = api_instance.time_entries_id_put(id, time_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **time_entry** | [**TimeEntry**](TimeEntry.md)|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_entries_post**
> TimeEntry time_entries_post(time_entry)



Create Time Entry

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

api_instance = ConnectWise::TimeEntriesApi.new

time_entry = ConnectWise::TimeEntry.new # TimeEntry | 


begin
  result = api_instance.time_entries_post(time_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeEntriesApi->time_entries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_entry** | [**TimeEntry**](TimeEntry.md)|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



