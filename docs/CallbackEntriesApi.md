# Connectwise::CallbackEntriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_callbacks_count_get**](CallbackEntriesApi.md#system_callbacks_count_get) | **GET** /system/callbacks/count | 
[**system_callbacks_get**](CallbackEntriesApi.md#system_callbacks_get) | **GET** /system/callbacks | 
[**system_callbacks_id_delete**](CallbackEntriesApi.md#system_callbacks_id_delete) | **DELETE** /system/callbacks/{id} | 
[**system_callbacks_id_get**](CallbackEntriesApi.md#system_callbacks_id_get) | **GET** /system/callbacks/{id} | 
[**system_callbacks_id_patch**](CallbackEntriesApi.md#system_callbacks_id_patch) | **PATCH** /system/callbacks/{id} | 
[**system_callbacks_id_put**](CallbackEntriesApi.md#system_callbacks_id_put) | **PUT** /system/callbacks/{id} | 
[**system_callbacks_post**](CallbackEntriesApi.md#system_callbacks_post) | **POST** /system/callbacks | 


# **system_callbacks_count_get**
> Count system_callbacks_count_get(opts)



Get Callback Entries Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_callbacks_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_count_get: #{e}"
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



# **system_callbacks_get**
> Array&lt;CallbackEntry&gt; system_callbacks_get(opts)



Get Callback Entries

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_callbacks_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;CallbackEntry&gt;**](CallbackEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_callbacks_id_delete**
> system_callbacks_id_delete(id)



Delete Callback Entry By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

id = 56 # Integer | 


begin
  api_instance.system_callbacks_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_id_delete: #{e}"
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



# **system_callbacks_id_get**
> CallbackEntry system_callbacks_id_get(id)



Get Callback Entry By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_callbacks_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CallbackEntry**](CallbackEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_callbacks_id_patch**
> CallbackEntry system_callbacks_id_patch(id, operations)



Update Callback Entry

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_callbacks_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CallbackEntry**](CallbackEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_callbacks_id_put**
> CallbackEntry system_callbacks_id_put(id, callback_entry)



Replace Callback Entry

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

id = 56 # Integer | 

callback_entry = Connectwise::CallbackEntry.new # CallbackEntry | 


begin
  result = api_instance.system_callbacks_id_put(id, callback_entry)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **callback_entry** | [**CallbackEntry**](CallbackEntry.md)|  | 

### Return type

[**CallbackEntry**](CallbackEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_callbacks_post**
> CallbackEntry system_callbacks_post(callback_entry)



Create Callback Entry

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::CallbackEntriesApi.new

callback_entry = Connectwise::CallbackEntry.new # CallbackEntry | 


begin
  result = api_instance.system_callbacks_post(callback_entry)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CallbackEntriesApi->system_callbacks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callback_entry** | [**CallbackEntry**](CallbackEntry.md)|  | 

### Return type

[**CallbackEntry**](CallbackEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



