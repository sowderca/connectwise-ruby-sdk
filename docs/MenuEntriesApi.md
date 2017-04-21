# ConnectWise::MenuEntriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_menuentries_count_get**](MenuEntriesApi.md#system_menuentries_count_get) | **GET** /system/menuentries/count | 
[**system_menuentries_get**](MenuEntriesApi.md#system_menuentries_get) | **GET** /system/menuentries | 
[**system_menuentries_id_delete**](MenuEntriesApi.md#system_menuentries_id_delete) | **DELETE** /system/menuentries/{id} | 
[**system_menuentries_id_get**](MenuEntriesApi.md#system_menuentries_id_get) | **GET** /system/menuentries/{id} | 
[**system_menuentries_id_image_get**](MenuEntriesApi.md#system_menuentries_id_image_get) | **GET** /system/menuentries/{id}/image | 
[**system_menuentries_id_image_post**](MenuEntriesApi.md#system_menuentries_id_image_post) | **POST** /system/menuentries/{id}/image | 
[**system_menuentries_id_patch**](MenuEntriesApi.md#system_menuentries_id_patch) | **PATCH** /system/menuentries/{id} | 
[**system_menuentries_id_put**](MenuEntriesApi.md#system_menuentries_id_put) | **PUT** /system/menuentries/{id} | 
[**system_menuentries_post**](MenuEntriesApi.md#system_menuentries_post) | **POST** /system/menuentries | 


# **system_menuentries_count_get**
> Count system_menuentries_count_get(opts)



Get Menu Entries Count

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

api_instance = ConnectWise::MenuEntriesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.system_menuentries_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_count_get: #{e}"
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



# **system_menuentries_get**
> Array&lt;MenuEntry&gt; system_menuentries_get(opts)



Get Menu Entries

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

api_instance = ConnectWise::MenuEntriesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_menuentries_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_get: #{e}"
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

[**Array&lt;MenuEntry&gt;**](MenuEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_menuentries_id_delete**
> system_menuentries_id_delete(id)



Delete Menu Entry By Id

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 


begin
  api_instance.system_menuentries_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_delete: #{e}"
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



# **system_menuentries_id_get**
> MenuEntry system_menuentries_id_get(id)



Get Menu Entry By Id

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_menuentries_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**MenuEntry**](MenuEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_menuentries_id_image_get**
> system_menuentries_id_image_get(id, opts)



Get Menu Entry Image

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 

opts = { 
  lastmodified: "lastmodified_example", # String | 
  large_flag: true # BOOLEAN | 
}

begin
  api_instance.system_menuentries_id_image_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **lastmodified** | **String**|  | [optional] 
 **large_flag** | **BOOLEAN**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **system_menuentries_id_image_post**
> system_menuentries_id_image_post(id, opts)



Upload Menu Entry Image

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 

opts = { 
  file: File.new("/path/to/file.txt") # File | File to upload
}

begin
  api_instance.system_menuentries_id_image_post(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_image_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **file** | **File**| File to upload | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **system_menuentries_id_patch**
> MenuEntry system_menuentries_id_patch(id, operations)



Update Menu Entry

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_menuentries_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MenuEntry**](MenuEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_menuentries_id_put**
> MenuEntry system_menuentries_id_put(id, menu_entry)



Replace Menu Entry

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

api_instance = ConnectWise::MenuEntriesApi.new

id = 56 # Integer | 

menu_entry = ConnectWise::MenuEntry.new # MenuEntry | 


begin
  result = api_instance.system_menuentries_id_put(id, menu_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **menu_entry** | [**MenuEntry**](MenuEntry.md)|  | 

### Return type

[**MenuEntry**](MenuEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_menuentries_post**
> MenuEntry system_menuentries_post(menu_entry)



Create Menu Entry

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

api_instance = ConnectWise::MenuEntriesApi.new

menu_entry = ConnectWise::MenuEntry.new # MenuEntry | 


begin
  result = api_instance.system_menuentries_post(menu_entry)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntriesApi->system_menuentries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menu_entry** | [**MenuEntry**](MenuEntry.md)|  | 

### Return type

[**MenuEntry**](MenuEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



